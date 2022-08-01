--Maniupulating Table Data
--Inserting Data into a Table

--Back up the table before you modify it
Select * INTO Titles_Revised
From Titles

--Insert records for the books with part# 39906,39907, and 39908.
--these books do not have information on their development costs.
INSERT INTO Titles_Revised (partnum, bktitle,devcost, slprice, pubdate) 
VALUES 
('39906', 'VC++ Made Easy', null, 50, '2017/06/01'),
('39907', 'History of the Internet', null, 25, '2017-07-01'),
('39908', 'Flash Tips and Tricks', null, 35, '2017-08-01')

--Verify the new rows have been added
Select *
From Titles_Revised

--Insert a record for a book with an apostrophe in its title.
INSERT Titles_Revised
VALUES
('39909', 'SQL''s Role in Big Data',19000,30,'2017-09-01')

--View all 4 rows that we added
Select *
From Titles_revised 
Where partnum Between 39906 And 39909

--modifying Data
--Update the records of books that do not have the development cost information and verify 
--whether the update is successful
UPDATE Titles_Revised
SET devcost = 21000
WHERE partnum BETWEEN 39906 AND 39908

--Verify that your changes took effect
SELECT *
FROM Titles_Revised
WHERE partnum BETWEEN 39906 AND 39908

--Update the information in the record for the book with partnum 39911.
UPDATE Titles_Revised
SET bktitle='Java Programming Made Easy',
	devcost=25000,
	slprice=32.000,
	pubdate='2017/11/01'
WHERE partnum='39909'

--Verify that your update took effect
SELECT *
FROM Titles_Revised
WHERE partnum='39909'

--Deleting a Row of Data from a table
--Deletethe record for the book with the part number 39907 from the titles table
DELETE Titles_Revised
WHERE partnum='39907'

--Verify wther your change effect
SELECT *
FROM Titles_Revised
WHERE partnum='39907'

--Deleting All Rows from the table
--Delete all the rows fron the titles_revised table
--Make sure how many rows do you have
SELECT *
FROM Titles_Revised

--Delete all the rows
TRUNCATE TABLE Titles_Revised

SELECT *
FROM Titles_Revised






















