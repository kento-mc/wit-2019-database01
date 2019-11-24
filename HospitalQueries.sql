USE hospital;

### Create users
create user if not exists HospitalAdmin identified by 'admin';
create user if not exists HeadNurse identified by 'headnurse';
create user if not exists Nurse01 identified by 'nurse01';
create user if not exists AttendingPhysician identified by 'attending';
create user if not exists InternPhysician identified by 'intern';

### Grant priviliges
grant all on hospital.* to HospitalAdmin with grant option;
grant select, insert, update on hospital.* to HeadNurse;
grant select on hospital.* to Nurse01;
grant update(date, time) on hospital.visit to Nurse01;
grant select on hospital.* to AttendingPhysician;
grant insert, update, delete on hospital.prescription to AttendingPhysician;
grant insert, update, delete on hospital.visit to AttendingPhysician;
grant select on hospital.* to InternPhysician;
grant insert, update on hospital.visit to InternPhysician;

### Frequently used queries and data manipulation statements
# Individual patient history, example for patient number 10003, Bart Simpson
select visit.date 'Visit Date', ward.wardName 'Ward', concat('Dr ', doctor.fName, doctor.lName) 'Doctor', drugName 'Prescription'
from visit join doctor on visit.PPS = doctor.PPS
join prescription on visit.visitID = prescription.visitID
join drug on prescription.drugID = drug.drugID
join admission on visit.admitID = admission.admitID
join patient on admission.patientID = patient.patientID
join ward on admission.wardID = ward.wardID
where patient.patientID = 10002
order by date desc;

# Most recent visit from given patient, example for patient number 10002, Marge Simpson
select visit.date 'Visit Date', ward.wardName 'Ward', concat('Dr ', doctor.fName, doctor.lName) 'Doctor', drugName 'Prescription'
from visit join doctor on visit.PPS = doctor.PPS
join prescription on visit.visitID = prescription.visitID
join drug on prescription.drugID = drug.drugID
join admission on visit.admitID = admission.admitID
join patient on admission.patientID = patient.patientID
join ward on admission.wardID = ward.wardID
where visit.date =
	(select max(date) from visit natural join admission
     where patientID = 10002)
order by date desc;

# Patients visited by given doctor, example for Dr Julius Hibbert
select concat(patient.lName, ', ', patient.fName) 'Name', visit.date 'Visit Date', ward.wardName 'Ward', drugName 'Prescription'
from patient natural join admission
natural join ward
natural join visit
natural join prescription
natural join drug
join doctor on visit.PPS = doctor.PPS
where visit.PPS = '12423422A'
order by Name;

# Number of visits for each patient with given doctor, example for Dr Nick Riviera
select concat(patient.lName, ', ', patient.fName) 'Name', count(visitID) 'Visits'
from patient natural join admission natural join visit
where visit.PPS = '11345672A'
group by Name 
order by Name;

# Register new patient
insert into patient (fName, lName, street, town, county, contactNo, DOB)
values ('Poochy', 'Simpson', '742 Evergreen Terrace', 'Springfield', 'USA County', 1234567899, '2016-10-14');

# Admit patient
insert into admission (wardID, inDate, inTime, outDate, outTime, patientID)
values (108, curdate(), time(now()), NULL, NULL, 10003);

# Prescribe medication
insert into prescription values 
(10056, 1004, '3 a day at meal time');

# Discharge patient
update admission
set outDate = curdate(), outTime = time(now())
where admitID = 10001;

### Views
# Patient visit histories
create or replace view patientHistories as
select concat(lName, ', ', fName) 'Name', count(visitID) 'Visits', max(date) 'Last Visit'
from Patient
join admission on patient.patientID = admission.patientID
natural join visit
group by Name
order by Name;

select * from patientHistories;

# Patients currently admitted
create or replace view currentlyAdmitted as
select concat(lName, ', ', fName) 'Name', wardName 'Ward', bedNumber 'Bed', inDate 'Date Admitted'
from patient
natural join admission natural join bed natural join ward
order by Name;

select * from currentlyAdmitted;

# Patients currently admitted but not yet visited by a doctor
create or replace view admittedAwaitingVisit as
select concat(lName, ', ', fName) 'Name', wardName 'Ward', bedNumber 'Bed', inDate 'Date Admitted', visit.date 'Visited on'
from patient
join admission on patient.patientID = admission.patientID
natural join ward
natural join bed
left join visit on admission.admitID = visit.admitID
where visit.date is null
order by Name;

select * from admittedAwaitingVisit;

# Number of free beds in each ward
create or replace view numFreeBeds as
select wardName 'Ward', count(bedNumber) 'Free Beds'
from ward natural join bed
where admitID is null
group by ward
order by wardName;

select * from numFreeBeds;

# Free beds in each ward
create or replace view freeBeds as
select wardName 'Ward', bedNumber 'Free Beds'
from ward natural join bed
where admitID is null
order by wardName;

select * from freeBeds;

# admissions in last week
create or replace view admissionsLastWeek as
select concat(lName, ', ', fName) 'Name', wardName 'Ward', inDate 'Date Admitted'
from patient
natural join admission natural join ward
where datediff(curdate(),str_to_date(inDate, '%Y-%m-%d')) <= 7
order by inDate desc, Name;

select * from admissionsLastWeek;

# admissions in last month
create or replace view admissionsLastMonth as
select concat(lName, ', ', fName) 'Name', wardName 'Ward', inDate 'Date Admitted'
from patient
natural join admission natural join ward
where datediff(curdate(),str_to_date(inDate, '%Y-%m-%d')) <= 31
order by inDate desc, Name;

select * from admissionsLastMonth;

# admissions in last year
create or replace view admissionsLastYear as
select concat(lName, ', ', fName) 'Name', wardName 'Ward', inDate 'Date Admitted'
from patient
natural join admission natural join ward
where datediff(curdate(),str_to_date(inDate, '%Y-%m-%d')) <= 365
order by inDate desc, Name;

select * from admissionsLastYear;

# Number of prescriptions of each drug in last week
create or replace view prescriptionsLastWeek as
select drugName 'Drug', count(visit.visitID) 'Prescriptions'
from drug join prescription on drug.drugID = prescription.drugID
join visit on prescription.visitID = visit.visitID
where datediff(curdate(),str_to_date(visit.date, '%Y-%m-%d')) <= 7
group by drugName;

select * from prescriptionsLastWeek;

# Number of prescriptions of each drug in last month
create or replace view prescriptionsLastMonth as
select drugName 'Drug', count(visit.visitID) 'Prescriptions'
from drug join prescription on drug.drugID = prescription.drugID
join visit on prescription.visitID = visit.visitID
where datediff(curdate(),str_to_date(visit.date, '%Y-%m-%d')) <= 31
group by drugName;

select * from prescriptionsLastMonth;

# Number of prescriptions of each drug in last year
create or replace view prescriptionLastYear as
select drugName 'Drug', count(visit.visitID) 'Prescriptions'
from drug join prescription on drug.drugID = prescription.drugID
join visit on prescription.visitID = visit.visitID
where datediff(curdate(),str_to_date(visit.date, '%Y-%m-%d')) <= 365
group by drugName;

select * from prescriptionLastYear;

### Create indexes
# Patient last name index
create index patientLastNameInd on patient(lName);

# Doctor last name index
create index doctorLastNameInd on doctor(lName);

# Ward name index
create index wardNameInd on ward(wardName);

### Create triggers
# Trigger to assign bed to new admission
DELIMITER $$
CREATE TRIGGER assign_bed 
    AFTER INSERT ON admission
    FOR EACH ROW 
BEGIN
	UPDATE bed
    SET admitID = 
		(SELECT MAX(admitID) FROM admission)
    WHERE bedNumber =
		(SELECT MIN(bedNumber) FROM (SELECT * FROM bed) AS Bed
         WHERE wardID = 
			(SELECT wardID FROM admission
			 WHERE admitID =
				(SELECT MAX(admitID) FROM admission))
		AND admitID IS NULL);
END $$
DELIMITER ;

# Trigger to remove admitID from Bed table when patient is discharged
DELIMITER $$
CREATE TRIGGER clear_bed_after_discharge 
    AFTER UPDATE ON admission
    FOR EACH ROW 
BEGIN
	UPDATE bed
    SET admitID = NULL
    WHERE bedNumber =
		(SELECT bedNumber FROM (SELECT * FROM bed) AS Bed
		 NATURAL JOIN admission
		 WHERE outDate IS NOT NULL);
END $$
DELIMITER ;
