CREATE TABLE Authors (
    Id INT NOT NULL,
    Name VARCHAR(70) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO Authors
    (Id, Name, Country)
VALUES
    (1, 'J.D. Salinger', 'USA'),
    (2, 'F. Scott. Fitzgerald', 'USA'),
    (3, 'Jane Austen', 'UK'),
    (4, 'Scott Hanselman', 'USA'),
    (5, 'Jason N. Gaylord', 'USA'),
    (6, 'Pranav Rastogi', 'India'),
    (7, 'Todd Miranda', 'USA'),
    (8, 'Christian Wenz', 'USA')
;

CREATE TABLE Books (
    Id INT NOT NULL,
    Title VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO Books
    (Id, Title)
VALUES
    (1, 'The Catcher in the Rye'),
    (2, 'Nine Stories'),
    (3, 'Franny and Zooey'),
    (4, 'The Great Gatsby'),
    (5, 'Tender id the Night'),
    (6, 'Pride and Prejudice'),
    (7, 'Professional ASP.NET 4.5 in C# and VB')
;

CREATE TABLE BooksAuthors (
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
);

INSERT INTO BooksAuthors
    (BookId, AuthorId)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2),
    (6, 3),
    (7, 4),
    (7, 5),
    (7, 6),
    (7, 7),
    (7, 8)
;