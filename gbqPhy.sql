/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      library database.dm1
 *
 * Date Created : Thursday, June 13, 2024 17:56:29
 * Target DBMS : Microsoft Azure Synapse Analytics
 */

/* 
 * TABLE: address 
 */

CREATE TABLE address(
    [address id]  char(10)        NOT NULL,
    street        varchar(max)    NULL,
    city          varchar(max)    NULL,
    state         varchar(max)    NULL,
    zip           varchar(max)    NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED ([address id]) NOT ENFORCED
)

go


IF OBJECT_ID('address') IS NOT NULL
    PRINT '<<< CREATED TABLE address >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE address >>>'
go

/* 
 * TABLE: book 
 */

CREATE TABLE book(
    title             varchar(300)    NOT NULL,
    author            varchar(200)    NOT NULL,
    available         bit             NULL,
    language          varchar(max)    NULL,
    pages             int             NULL,
    published_date    date            NULL,
    name              varchar(max)    NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (title, author) NOT ENFORCED
)

go


IF OBJECT_ID('book') IS NOT NULL
    PRINT '<<< CREATED TABLE book >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE book >>>'
go

/* 
 * TABLE: chapter 
 */

CREATE TABLE chapter(
    [Chapter Number]  char(10)        NOT NULL,
    heading           char(100)       NOT NULL,
    [page count]      int             NULL,
    title             varchar(300)    NOT NULL,
    author            varchar(200)    NOT NULL,
    CONSTRAINT PK37 PRIMARY KEY NONCLUSTERED ([Chapter Number], title, author) NOT ENFORCED
)

go


IF OBJECT_ID('chapter') IS NOT NULL
    PRINT '<<< CREATED TABLE chapter >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE chapter >>>'
go

/* 
 * TABLE: checkout 
 */

CREATE TABLE checkout(
    date              date            NULL,
    title             varchar(300)    NOT NULL,
    author            varchar(200)    NOT NULL,
    duration          int             NULL,
    patron_number     char(10)        NOT NULL,
    library_number    char(10)        NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (title, author, patron_number) NOT ENFORCED
)

go


IF OBJECT_ID('checkout') IS NOT NULL
    PRINT '<<< CREATED TABLE checkout >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE checkout >>>'
go

/* 
 * TABLE: library 
 */

CREATE TABLE library(
    library_number    char(10)        NOT NULL,
    [library name]    varchar(300)    NULL,
    [address id]      char(10)        NOT NULL,
    CONSTRAINT PK36 PRIMARY KEY NONCLUSTERED (library_number) NOT ENFORCED
)

go


IF OBJECT_ID('library') IS NOT NULL
    PRINT '<<< CREATED TABLE library >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE library >>>'
go

/* 
 * TABLE: patron 
 */

CREATE TABLE patron(
    patron_number    char(10)        NOT NULL,
    name             varchar(max)    NULL,
    [address id]     char(10)        NOT NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (patron_number) NOT ENFORCED
)

go


IF OBJECT_ID('patron') IS NOT NULL
    PRINT '<<< CREATED TABLE patron >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE patron >>>'
go

/* 
 * TABLE: publisher 
 */

CREATE TABLE publisher(
    name          varchar(max)    NOT NULL,
    founded       date            NULL,
    location      varchar(max)    NULL,
    [address id]  char(10)        NOT NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (name) NOT ENFORCED
)

go


IF OBJECT_ID('publisher') IS NOT NULL
    PRINT '<<< CREATED TABLE publisher >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE publisher >>>'
go

/* 
 * TABLE: section 
 */

CREATE TABLE section(
    section_number          char(10)        NOT NULL,
    [number of paragraphs]  int             NULL,
    [word count]            int             NULL,
    [Chapter Number]        char(10)        NOT NULL,
    title                   varchar(300)    NOT NULL,
    author                  varchar(200)    NOT NULL,
    CONSTRAINT PK38 PRIMARY KEY NONCLUSTERED (section_number, [Chapter Number], title, author) NOT ENFORCED
)

go


IF OBJECT_ID('section') IS NOT NULL
    PRINT '<<< CREATED TABLE section >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE section >>>'
go

