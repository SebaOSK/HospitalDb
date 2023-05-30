insert into "Hospital"."Employee" ("FirstName", "LastName", "DOB", "PhoneNumber", "Email", "AddressId", "WardId") VALUES
	 ('Marta', 'Martović', '1967-03-12', '0991234543', 'marta@aol.com',
	  '45ddcbb7-b733-46ab-9213-541c193e1781',
	  (select "Id" from "Hospital"."Ward" where "WardName" = 'Endokrinologija')),
	  
	 ('Boško','Bošković','1958-01-01','0998854543','bosko@yahoo.com',
	  '45ddcbb7-b733-46ab-9213-541c193e1781',
	  (select "Id" from "Hospital"."Ward" where "WardName" = 'Akutni Odjel')),
	  
	 ('Monika','Moniković','1977-09-26','0991344543','mona@hotmail.com',
	  'b1160c6f-3ce9-44f9-b693-e5e6e1270051',
	  (select "Id" from "Hospital"."Ward" where "WardName" = 'Abdominalna kirurgija')),
	 
	 ('Sandra','Sandrić','1988-12-19','0911234582','sandra@net.hr',
	  '8da211af-fcf0-4774-905d-621fccecdf66'),
	  (select "Id" from "Hospital"."Ward" where "WardName" = 'Kardiologija'));
