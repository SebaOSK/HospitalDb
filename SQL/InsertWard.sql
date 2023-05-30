
create extension if not exists "uuid-ossp";

insert into "Hospital"."Ward"("WardName", "Capacity", "ClinicId")
values ('Endokrinologija', 10, 
        (select "Id" from "Hospital"."Clinic" where "ClinicName" = 'Klinika za Pedijatriju')),
        ('Akutni Odjel', 15, 
        (select "Id" from "Hospital"."Clinic" where "ClinicName" = 'Klinika za Psihijatriju')),
        ('Dnevna bolnica', 30, 
        (select "Id" from "Hospital"."Clinic" where "ClinicName" = 'Klinika za Psihijatriju')),
        ('Ortopedija', 25, 
        (select "Id" from "Hospital"."Clinic" where "ClinicName" = 'Klinika za Kirurgiju')),
        ('Abdominalna kirurgija', 40, 
        (select "Id" from "Hospital"."Clinic" where "ClinicName" = 'Klinika za Kirurgiju')),
        ('Gastroenterologija', 35, 
        (select "Id" from "Hospital"."Clinic" where "ClinicName" = 'Klinika za Internu Medicinu')),
        ('Kardiologija', 15, 
        (select "Id" from "Hospital"."Clinic" where "ClinicName" = 'Klinika za Internu Medicinu'));
       