insert into "Hospital"."Appointment"("PatientId", "WardId", "AppointmentDate", "AppointmentTime") 
values ('6dbdcf5f-4680-4fcf-af7d-d0fcfa976ad1', 
       (select "Id" from "Hospital"."Ward" where "WardName" = 'Dnevna bolnica'), 
       '2023-06-12', 
       '08:00:00'),
        
       ('51b77366-7402-4038-943a-4b705cda80a3', 
       (select "Id" from "Hospital"."Ward" where "WardName" = 'Gastroenterologija'), 
       '2023-07-15', 
       '09:45:00'),
       
       ('b19dd7cc-085b-4311-878b-c3a59187d2d1', 
       (select "Id" from "Hospital"."Ward" where "WardName" = 'Ortopedija'),
       '2023-08-21', 
       '11:30:00'),
       
       ('2ebf0aed-170a-4d6b-9599-118ff8ea595e', 
       (select "Id" from "Hospital"."Ward" where "WardName" = 'Abdominalna kirurgija'), 
       '2023-11-20', 
       '12:15:00');




