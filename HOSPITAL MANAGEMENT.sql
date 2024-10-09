
use hospitaldatabasemanagement;
-----appointment(1)------
create table appointment(
patient_appointment_id int primary key,
patient_name varchar(100),
doctor_id int,
appointment_date date,
appointment_time time,
patient_location varchar(100),
hospital_id int,
pin int);
alter table appointment add column pin int;
select* from appointment
truncate table appointment

drop table appointment

insert into appointment values 
(1,"karthi",34567,'24-09-27','11:45',"chennai",32321,6000042),
(2,"niranjan",45678,'24-10-29','11:56',"chennai",32321,6000042),
(3,"nirmal",56789,'24-06-26','12:16',"trichy",32321,6000042),
(4,"vishwa",67890,'24-07-25','1:45',"pudukkottai",32321,6000042),
(6,"rohith",78901,'24-05-19','2:15',"neyveli",32321,6000042),
(7,"aruthra",89012,'24-07-18','12:46',"ariyalur",32321,6000042),
(5,"aarthi",90123,'24-05-21','3:25',"coimbatore",32321,6000042),

(8,"saravanan",21234,'24-07-13','4:15',"theni",32321,6000042),
(9,"praveen",56564,'24-09-23','5:23',"salem",32321,6000042),
(10,"hariharan",62135,'24-08-27','6:12',"nilgiri",32321,6000042),
(11,"taj",76576,'24-05-13','5:35',"pudukkottai",32321,6000042),
(12,"dinesh",96760,'24-05-06','7:10',"chidharam",32321,6000042),
(13,"selva",96754,'24-03-12','5:23',"nagarcoil",32321,6000042),
(14,"arunachalam",65891,'24-02-27','8:18',"yercaud",32321,6000042),
(15,"naveen",65890,'24-06-29','5.01',"bangalore",32321,6000042),
(16,"suresh",23121,'24-03-01','4:08',"mumbai",32321,6000042),
(17,"senthil",23129,'24-05-15','3:09',"pattukottai",32321,6000042),
(18,"sarath",46512,'24-11-02','2:05',"aranthangii",32321,6000042),
(19,"joseph",13579,'24-03-07','1:05',"madurai",32321,6000042),
(20,"jeevan",13576,'24-12-09','2:12',"villupuram",32321,6000042),
(21,"arjun",23101,'24-10-08','3.15',"kuttraalam",32321,6000042),
(22,"vimal",23109,'24-01-01','12:12',"thirunelveli",32321,6000042),
(23,"sivanesh",54555,'24-08-01','11:11',"tuticorin",32321,6000042),
(24,"gobi",54552,'24-08-05','12:29',"virudhachalam",32321,6000042),
(25,"dhanasekar",67436,'24-08-22','11:01',"rameshwaram",32321,6000042),
(26,"kishore",67430,'24-01-27','5:15',"cuddalore",32321,6000042);
truncate table appointment
select * from appointment
delete from appointment where patient_location="coimbatore"

-----doctor details(2)----

create index idx_patientappointment_id on appointment(patient_appointment_id);
create table doctor(
doctor_id int primary key,
doctor_name varchar(100),
doctor_specilisation varchar(45),
patient_appointment_id int,
nationality varchar(100),
 dr_working_days varchar(100));
alter table doctor add column dr_working_days  varchar(100);

select * from doctor
ALTER TABLE DOCTOR 
add
CONSTRAINT FK_patientappointment_Id FOREIGN KEY(patient_appointment_id) references appointment (patient_appointment_id);
drop table doctor
truncate table doctor

alter table doctor
drop foreign key FK_patientappointment_Id

insert into doctor values
(34567,"prajan","cardiology",3,"indian","weekdays"),
(45678,"vijay","urology",2,"indian","weekdays"),
(56789,"victoria","dermatology",1,"indian","weekoff"),
(67890,"sumith","urology",4,"indian","weekdays"),
(78901,"daniel","dermatology",6,"indian","weekdays"),
(89012,"kumar","cardiology",5,"indian","weekdays"),
(90123,"dilip","dermatology",7,"indian","weekdays"),
(21234,"soori","neurology",8,"indian","weekoff"),
(56564,"ajmal","neurology",9,"indian","weekdays"),
(62135,"wasim","plastic surgeon",10,"indian","weekoff"),
(76576,"hajith","plastic surgeon",11,"indian","weekdays"),
(96760,"yashik","neurology&neurosurgeon",12,"indian","weekoff"),
(96754,"megna","neurology&neurosurgeon",13,"indian","weekoff"),
(65891,"ajay","dermatology",14,"indian","weekoff"),
(65890,"prem","dermatology",15,"indian","weekdays"),
(23121,"andrew","urology",16,"australian","weekoff"),
(23129,"smith","urology",17,"australian","weekdays"),
(46512,"sathish","cardiology",18,"indian","weekoff"),
(13579,"suriya","obstetrics&gynecology",19,"indian","weekdays"),
(13576,"aravind samy","obstetrics&gynecology",20,"indian","weekdays"),
(23101,"vinaykumar","nephrology",21,"indian","weekdays"),
(23109,"kani","nephrology",22,"indian","weekoff"),
(54555,"kadhiresan","pulmonologist",23,"indian","weekdays"),
(54552,"vetri","pulmonologist",24,"indian","weekoff"),
(67436,"bala","dentist",25,"indian","weekdays"),
(67430,"bala","dentist",26,"indian","weekdays");




select * from doctor
drop table doctor
truncate table doctor




-----lab details(3)------
create index idx_doctor_Id on doctor(doctor_id);
create table lab(
lab_employee_id int,
lab_no int,
test_type varchar(100),
test_code int,
patient_id int,
test_given_date date,
doctor_name varchar(100),
doctor_id int);
select * from lab
truncate table lab;
drop table lab
drop index idx_test_code on lab;
alter table lab
add
constraint FK_doctor_Id foreign key (doctor_id) references doctor(doctor_id);

alter table lab
drop foreign key FK_doctor_Id

insert into lab values
(123,56,"blood_test",77086,94886,'24-09-19',"dilip",90123),
(234,57,"urine_test",88383,88381,'24-09-18',"kumar",89012),
(345,58,"sugar_test",63749,89405,'24-09-15',"vijay",45678),
(456,59,"wbc_test",94866,77084,'24-09-24',"victoria",56789),
(567,60,"platelets_test",97876,86714,'24-09-25',"sumith",67890),
(421,53,"complete blood count(cbc)",55566,34565,'24-06-12',"vetri",54552),
(437,52,"basic metabolic panel(bmp)",64321,67843,'24-12-02',"kani",23109),
(256,51,"blood urea nitrogen(bun)",74356,87905,'24-11-02',"andrew",23121),
(323,63,"sugar_test",63649,89905,'24-09-12',"wasim",62135),
(567,60,"platelets_test",94876,89774,'24-06-25',"megna",96754),
(389,67,"urine_test",88983,88371,'24-01-18',"prem",65890),
(235,78,"wbc_test",93836,66084,'24-10-24',"smith",23129),
(447,82,"basic metabolic panel(bmp)",66721,69843,'24-05-02',"sathish",46512),
(221,76,"complete blood count(cbc)",53256,38569,'24-06-09',"suriya",13579),
(490,80,"thyroid stimulating hormone test (tsh)",43670,88776,'24-01-09',"kadhiresan",54555),
(322,77,"electrolyte test",55221,11224,'24-08-22',"ajmal",56564),
(457,73,"hba1c test",65709,30713,'24-09-18',"soori",21234),
(421,83,"liver function test",32107,50505,'24-01-25',"aravind samy",13576),
(444,84,"liver function test",45452,65676,'24-04-19',"andrew",23121),
(309,85,"haemoglobin",56121,33322,'24-04-09',"bala",67430),
(289,96,"psa blood cell",54098,80965,'24-02-21',"vinaykumar",23101),
(453,89,"co2 blood test",67009,90089,'24-02-29',"hajith",76576),
(543,90,"sedimentation rate",76543,54687,'24-03-29',"ajay",65891);
select * from lab


-----medical details(4)-----
create index idx_patient_id on lab(patient_id);
create table medical(
patient_id int,
patient_name varchar(100),
medicine_receiving_date  date,
consulted_dr_name varchar(100),
doctor_id int);
alter table  medical
ADD
constraint FK_patient_Id foreign key (patient_id) references lab (patient_id);
select * from medical
alter table medical
drop foreign key FK_patient_Id;
truncate table medical
drop table medical
alter table medical drop index idx_patient_id;
delete from medical

insert into medical values
(94886,"karthi",'24-11-01',"dilip",77086),
(88381,"niranjan",'24-11-02',"kumar",88383),
(89405,"aarthi",'24-11-03',"vijay",63749),
(77084,"vishwa",'24-11-04',"victoria",94866),
(86714,"saravana",'24-11-05',"sumith",97876),
(34565,"suresh",'24-11-06',"vetri",55566),
(67843,"joseph",'24-11-07',"kani",64321),
(87905,"arunachalam",'24-11-08',"andrew",74356),
(89905,"arjun",'24-11-09',"wasim",63649),
(89774,"vimal",'24-11-10',"megna",94876),
(88371,"gobi",'24-11-11',"prem",88983),
(66084,"naveen",'24-11-12',"smith",93836),
(69843,"selva",'24-11-13',"sathish",66721),
(38569,"taj",'24-11-15',"suriya",53256),
(88776,"hariharan",'24-12-16',"kadhiresan",43670),
(11224,"praveen",'24-12-17',"ajmal",55221),
(50505,"nirmal",'24-12-21',"aravind samy",32107),
(65676,"sivanesh",'24-12-23',"andrew",45452),
(33322,"kishore",'24-12-25',"bala",56121),
(80965,"dhanasekar",'24-11-19',"vinaykumar",54098),
(90089,"jeevan",'24-11-23',"hajith",67009),
(54687,"sarath",'24-11-29',"ajay",76543);
select * from medical
drop index idx_consulted_dr_name on medical;


-----test price(5)---
create index idx_test_code on lab (test_code);
create table test(
patient_id int,
patient_name varchar(100),
test_prize int,
test_code int,
hospital_id int,
hospital_location varchar(100));
doctor32321,"chennai"
drop table test
se
alter table test
add 
constraint FK_patient_test_code foreign key (test_code) references lab (test_code);
select * from test
alter table test
drop foreign key  FK_test_code

insert into test values
(34565,"suresh",6000,55566,32321,"chennai"),
(67843,"joseph",1100,64321,32321,"chennai"),
(87905,"arunachalam",5000,74356,32321,"chennai"),
(89905,"arjun",2300,63649,32321,"chennai"),
(89774,"vimal",1900,94876,32321,"chennai"),
(88371,"gobi",3800,88983,32321,"chennai"),
(66084,"naveen",7000,93836,32321,"chennai"),
(69843,"selva",8000,66721,32321,"chennai"),
(38569,"taj",9000,53256,32321,"chennai"),
(88776,"hariharan",5000,43670,32321,"chennai"),
(11224,"praveen",3680,55221,32321,"chennai"),
(50505,"nirmal",2800,32107,32321,"chennai"),
(65676,"sivanesh",2680,45452,32321,"chennai"),
(33322,"kishore",4150,56121,32321,"chennai"),
(80965,"dhanasekar",3500,54098,32321,"chennai"),
(90089,"jeevan",1800,67009,32321,"chennai"),
(54687,"sarath",1788,76543,32321,"chennai"),
(94886,"karthi",5600,77086,32321,"chennai"),
(88381,"niranjan",2380,88383,32321,"chennai");
truncate table medical




------bill details patient(6)-----
create index idx_consulted_dr_name on medical (consulted_dr_name );
create table bill(
bill_No int,
patient_id int,
patient_name varchar(100),
doctor_consulting_fees int,
test_prize int,
medicine_prize int,
total_amount int,
consulted_dr_name varchar(100));
alter table bill
add
constraint FK_consulted_dr_name foreign key (consulted_dr_name) references medical(consulted_dr_name);
alter table bill
drop foreign key  FK_consulted_dr_name
drop table bill

insert into bill values
(1,94886,"karthi",1000,5600,3500,10100,"dilip"),
(2,88381,"niranjan",500,2380,3500,6380,"kumar"),
(6,34565,"suresh",550,6000,1500,8050,"vetri"),
(7,67843,"joseph",200,1100,300,1600,"kani"),
(8,87905,"arunachalam",500,5000,500,6000,"andrew"),
(9,89905,"arjun",250,2300,250,2800,"wasim"),
(10,89774,"vimal",500,1900,700,3100,"megna"),
(11,88371,"gobi",500,3800,500,4800,"prem"),
(12,66084,"naveen",700,7000,300,8000,"smith"),
(13,69843,"selva",800,8000,200,9000,"sathish"),
(14,38569,"taj",900,9000,600,10500,"suriya"),
(15,88776,"hariharan",500,5000,500,6000,"kadhiresan"),
(16,11224,"praveen",1000,3680,1000,5680,"ajmal"),
(18,65676,"sivanesh",1000,2680,2000,5680,"andrew"),
(19,33322,"kishore",500,4150,500,5150,"bala"),
(20,80965,"dhanasekar",500,3500,400,4400,"vinaykumar"),
(21,90089,"jeevan",300,1800,500,2600,"hajith"),
(22,54687,"sarath",500,1788,500,2788,"ajay");


 
______hospital details(7)___
create index idx_pin on appointment (pin);
create table hospital_detail(
hospital_id int,
hospital_name varchar(100),
hospital_district varchar(100),
hospital_branch varchar(100),
pin int);

insert into hospital_detail values
(32321,"brindha_hospital","chennai","porur",6000042),
(32321,"brindha_hospital","chennai","velacherry",6000042),
(32321,"brindha_hospital","chennai","guindy",6000042),
(32321,"brindha_hospital","chennai","thambaram",6000042),
(32321,"brindha_hospital","chennai","egmore",6000042),
(32321,"brindha_hospital","chennai","poonamalle",6000042),
(32321,"brindha_hospital","chennai","koyambedu",6000042),
(32321,"brindha_hospital","chennai","broadway",6000042),
(32321,"brindha_hospital","chennai","ambattur",6000042);







drop table hospital_detail
select * from   hospital_detail
alter table hospital_detail
add
constraint FK_Pin foreign key (pin) references appointment (pin);


alter table hospital_detail
drop foreign key  FK_Pin 
_____insurance details(8)____

create index idx_hospital_id on hospital_detail(hospital_id);
 create table insurance(
 patient_id int,
 patient_name varchar(100),
 hospital_id int,
 consulted_dr_name varchar(100),
 insurance_amount int);
 alter table insurance
add
constraint FK_hospital_id foreign key (hospital_id) references hospital_detail (hospital_id);
 alter table insurance
drop foreign key FK_hospital_id
drop table insurance


 insert into insurance values
 (94886,"karthi",32321,"dilip",55000),
 (88381,"niranjan",32321,"kumar",60000),
 (89905,"arunachalam",32321,"andrew",70000),
 (86714,"saravana",32321,"sumith",50000),
 (67843,"joseph",32321,"kani",45000);
 --------------------xxxxxproject(enD)finished---------------------------------
 
 SELECT * FROM appointment
 
 
 
 
 
 
 
 
 
 
 
select doctor.doctor_id,doctor_name,doctor_specilisation,appointment.patient_appointment_id 
from doctor
left join appointment
on doctor.doctor_id=appointment.doctor_id
 order by appointment.patient_appointment_id;


select doctor.doctor_id,doctor_name,doctor_specilisation,appointment.patient_appointment_id 
from doctor
inner join appointment
on doctor.doctor_id=appointment.doctor_id
 order by appointment.patient_appointment_id;
 
select medical. patient_id ,patient_name ,medicine_receiving_date  ,medical.doctor_id ,consulted_dr_name 
from medical
inner join lab
on medical.doctor_id=lab.doctor_id;


select medical. patient_id ,patient_name ,medicine_receiving_date  ,medical.doctor_id ,consulted_dr_name 
from medical
left join lab
on medical.doctor_id=lab.doctor_id;


select medical. patient_id ,patient_name ,medicine_receiving_date  ,doctor.doctor_id ,consulted_dr_name 
from medical
left join doctor
on medical.doctor_id=doctor.doctor_id;



select bill.bill_No ,test.patient_id,test.patient_name , doctor_consulting_fees,test.test_prize, medicine_prize, total_amount ,consulted_dr_name
from bill
right join test
on bill.patient_id=test.patient_id
