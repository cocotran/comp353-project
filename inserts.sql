INSERT INTO Person(personID,firstname, lastName, dob, medicareNum, phoneNum, address, city, postalCode, province, citizenship, email, ageGroup, beenInfected)
VALUES 
(123, 'John', 'Doe', 1234, 2222, 5141112222, '123 Main St.', 'Montreal', 'H5X 23G', 'QC', 'Canadian', 'test@email.com', 1, True),
(124, 'John', 'Doe', 1234, 2222, 5141112222, '123 Main St.', 'Montreal', 'H5X 23G', 'QC', 'Canadian', 'test@email.com', 1, True),
(125, 'John', 'Doe', 1234, 2222, 5141112222, '123 Main St.', 'Montreal', 'H5X 23G', 'QC', 'Canadian', 'test@email.com', 1, True),
(126, 'John', 'Doe', 1234, 2222, 5141112222, '123 Main St.', 'Montreal', 'H5X 23G', 'QC', 'Canadian', 'test@email.com', 1, True),
(127, 'John', 'Doe', 1234, 2222, 5141112222, '123 Main St.', 'Montreal', 'H5X 23G', 'QC', 'Canadian', 'test@email.com', 1, True),
(128, 'John', 'Doe', 1234, 2222, 5141112222, '123 Main St.', 'Montreal', 'H5X 23G', 'QC', 'Canadian', 'test@email.com', 1, True),
(129, 'John', 'Doe', 1234, 2222, 5141112222, '123 Main St.', 'Montreal', 'H5X 23G', 'QC', 'Canadian', 'test@email.com', 1, True),
(130, 'John', 'Doe', 1234, 2222, 5141112222, '123 Main St.', 'Montreal', 'H5X 23G', 'QC', 'Canadian', 'test@email.com', 1, True),
(131, 'John', 'Doe', 1234, 2222, 5141112222, '123 Main St.', 'Montreal', 'H5X 23G', 'QC', 'Canadian', 'test@email.com', 1, True),
(132, 'John', 'Doe', 1234, 2222, 5141112222, '123 Main St.', 'Montreal', 'H5X 23G', 'QC', 'Canadian', 'test@email.com', 1, True);

INSERT INTO AgeGroup(groupID, lower_bound, upper_bound, is_active)
VALUES 
(1, 80, 150, False),
(2, 70, 79, True),
(3, 60, 69, False),
(4, 50, 59, False),
(5, 40, 49, False),
(6, 30, 39, False),
(7, 18, 29, False),
(8, 12, 17, False),
(9, 5, 11, False),
(10, 0, 4, False);



INSERT INTO partOf (groupID, personID)
VALUES 
(1, 123),
(2, 124),
(3, 125),
(4, 126),
(5, 127),
(6, 128),
(7, 129),
(8, 130),
(9, 131),
(10, 132);

INSERT INTO Vaccine (vaxID, doseNumber, type)
VALUES 
(1, 1, 'Pfizer'),
(2, 2, 'Pfizer'),
(3, 1, 'Pfizer'),
(4, 2, 'Pfizer'),
(5, 1, 'Pfizer'),
(6, 3, 'Pfizer'),
(7, 1, 'Pfizer'),
(8, 4, 'Pfizer'),
(9, 2, 'Pfizer'),
(10, 1, 'Pfizer');
