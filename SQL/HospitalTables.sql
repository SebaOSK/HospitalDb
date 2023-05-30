drop schema "Hospital" cascade;

create schema if not exists "Hospital";

set search_path to "Hospital";

create extension if not exists "uuid-ossp";

create table if not exists "Clinic"("Id" uuid default uuid_generate_v4() primary key,
                                  "ClinicName" varchar(255) unique not null);

                                 
create table if not exists "Ward"("Id" uuid default uuid_generate_v4() primary key,
                                "WardName" varchar(255) unique not null,
                                "Capacity" int,
                                "ClinicId" uuid not null,
                                constraint "Fk_Ward_Clinic_ClinicId"
                                foreign key ("ClinicId") references "Clinic"("Id"));

create table if not exists "Address"("Id" uuid default uuid_generate_v4() primary key,
                                   "Street" varchar(255) not null,
                                   "City" varchar(255) not null,
                                   "ZIP" int not null,
                                   "Country" varchar(255) not null);
                               
create table if not exists "Employee"("Id" uuid default uuid_generate_v4() primary key,
                                    "FirstName" varchar(255) not null,
                                    "LastName" varchar(255) not null,
                                    "DOB" date not null,
                                    "PhoneNumber" varchar(20) not null,
                                    "Email" varchar(255),
                                    "AddressId" uuid not null,
                                    "WardId" uuid not null,
                                    constraint "Fk_Employee_Address_AddressId"
                                    foreign key ("AddressId") references "Address"("Id"),
                                    constraint "Fk_Employee_Ward_WardId"
                                    foreign key ("WardId") references "Ward"("Id"));

create table if not exists "Contract"("Id" uuid default uuid_generate_v4() primary key,
                                    "TypeOfContract" varchar(255) not null,
                                    "WorkPosition" varchar(255) not null,
                                    "ContractStart" date not null,
                                    constraint "Fk_Contract_Employee_EmployeeId"
                                    foreign key ("Id") references "Employee"("Id"));
                                   
create table if not exists "Patient"("Id" uuid default uuid_generate_v4() primary key,
                                   "FirstName" varchar(255) not null,
                                   "LastName" varchar(255) not null,
                                   "DOB" date not null,
                                   "PhoneNumber" varchar(20) not null,
                                   "EmergencyContact" varchar(20) not null);

create table if not exists "Appointment"("Id" uuid default uuid_generate_v4() primary key,
                                       "PatientId" uuid not null,
                                       "WardId" uuid not null,
                                       "AppointmentDate" date not null,
                                       "AppointmentTime" time not null,
                                       constraint "Fk_Appointment_Patient_PatientId"
                                       foreign key ("PatientId") references "Patient"("Id"),
                                       constraint "Fk_Appointment_Ward_WardId"
                                       foreign key ("WardId") references "Ward"("Id")) 