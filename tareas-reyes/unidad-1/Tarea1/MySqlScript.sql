CREATE TABLE User (id INT PRIMARY KEY, username VARCHAR(255), email VARCHAR(255)); 
CREATE TABLE Book (id INT PRIMARY KEY, title VARCHAR(255), author VARCHAR(255)); 
CREATE TABLE Loan (id INT PRIMARY KEY, id_user INT NOT NULL, id_book INT NOT NULL, loan_date DATE, FOREIGN KEY (id_user) REFERENCES User(id), FOREIGN KEY (id_book) REFERENCES Book(id)); 
INSERT INTO User (id, username, email) VALUES (0,'Ana Gómez','ana@email.com'),(1,'Carlos Ruíz','carlos@email.com'); 
INSERT INTO Book (id, title, author) VALUES (0,'El Principito','Antoine de Saint-Exupéry'),(1,'Cien Años de Soledad','Gabriel García Márquez'); 
INSERT INTO Loan (id, id_user, id_book, loan_date) VALUES (0,0,0,'2026-03-01'),(1,1,1,'2026-03-02'),(2,0,1,'2026-03-05');

