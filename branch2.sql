/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      testsample.DM1
 *
 * Date Created : Monday, June 17, 2024 21:23:21
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: myschema.bookmodify 
 */

CREATE TABLE myschema.bookmodify(
    l1         int            DEFAULT 100 NOT NULL
               CHECK (l1 =10),
    subject    varchar(10)    NOT NULL,
    b1int      int            DEFAULT 100 NULL
               CHECK (b1int =10),
    name       char(10)       NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (l1, subject)
)

go


IF OBJECT_ID('myschema.bookmodify') IS NOT NULL
    PRINT '<<< CREATED TABLE myschema.bookmodify >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE myschema.bookmodify >>>'
go

/* 
 * TABLE: myschema.car 
 */

CREATE TABLE myschema.car(
    id         char(10)    NOT NULL,
    model      char(10)    NULL,
    carname    char(10)    NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (id)
)

go


IF OBJECT_ID('myschema.car') IS NOT NULL
    PRINT '<<< CREATED TABLE myschema.car >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE myschema.car >>>'
go

/* 
 * TABLE: myschema.ChildDomain 
 */

CREATE TABLE myschema.ChildDomain(
    primarycol    char(10)    NOT NULL,
    domaincol     int         DEFAULT 100 NOT NULL
                  CHECK (domaincol =10),
    CONSTRAINT PK19 PRIMARY KEY NONCLUSTERED (primarycol, domaincol)
)

go


IF OBJECT_ID('myschema.ChildDomain') IS NOT NULL
    PRINT '<<< CREATED TABLE myschema.ChildDomain >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE myschema.ChildDomain >>>'
go

/* 
 * TABLE: myschema.library 
 */

CREATE TABLE myschema.library(
    l1            int               DEFAULT 100 NOT NULL
                  CHECK (l1 =10),
    roomnumber    numeric(10, 0)    NULL,
    name          char(10)          DEFAULT 33 NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (l1)
)

go


IF OBJECT_ID('myschema.library') IS NOT NULL
    PRINT '<<< CREATED TABLE myschema.library >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE myschema.library >>>'
go

/* 
 * TABLE: myschema.pages 
 */

CREATE TABLE myschema.pages(
    l1            int            DEFAULT 100 NOT NULL
                  CHECK (l1 =10),
    pagenumber    int            NOT NULL,
    subject       varchar(10)    NOT NULL,
    content       text           NULL,
    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (l1, pagenumber, subject)
)

go


IF OBJECT_ID('myschema.pages') IS NOT NULL
    PRINT '<<< CREATED TABLE myschema.pages >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE myschema.pages >>>'
go

/* 
 * TABLE: myschema.ParentDomain 
 */

CREATE TABLE myschema.ParentDomain(
    domaincol     int            DEFAULT 100 NOT NULL
                  CHECK (domaincol =10),
    colvarchar    varchar(10)    NULL,
    CONSTRAINT PK18 PRIMARY KEY NONCLUSTERED (domaincol)
)

go


IF OBJECT_ID('myschema.ParentDomain') IS NOT NULL
    PRINT '<<< CREATED TABLE myschema.ParentDomain >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE myschema.ParentDomain >>>'
go

/* 
 * TABLE: myschema.service 
 */

CREATE TABLE myschema.service(
    serviceid    char(10)    NOT NULL,
    location     char(10)    NULL,
    center       char(10)    NULL,
    id           char(10)    NULL,
    CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (serviceid)
)

go


IF OBJECT_ID('myschema.service') IS NOT NULL
    PRINT '<<< CREATED TABLE myschema.service >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE myschema.service >>>'
go

/* 
 * TABLE: myschema.test1 
 */

CREATE TABLE myschema.test1(
    p1identity    int         IDENTITY(1,1)
                  CONSTRAINT testconstraint CHECK (p1identity>0 AND p1identity < 100),
    col1char      char(10)    DEFAULT 'col1value' NOT NULL
                  CONSTRAINT col1constraint CHECK (p1identity>0 AND p1identity < 100),
    col2char      char(10)    DEFAULT 'col2value' NULL
                  CONSTRAINT col2constraint CHECK (p1identity>0 AND p1identity < 100),
    computed      float       NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (p1identity)
)

go


IF OBJECT_ID('myschema.test1') IS NOT NULL
    PRINT '<<< CREATED TABLE myschema.test1 >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE myschema.test1 >>>'
go

/* 
 * TABLE: myschema.test2 
 */

CREATE TABLE myschema.test2(
    p2            char(10)    DEFAULT 'p2value' NOT NULL
                  CONSTRAINT p2c CHECK (p1identity>0 and p1identity < 1000),
    col3char      char(10)    DEFAULT 'col3value' NULL
                  CONSTRAINT col3c CHECK (p1identity>0 and p1identity < 1000),
    col4char      char(10)    DEFAULT 'col4value' NULL
                  CONSTRAINT col4c CHECK (p1identity>0 and p1identity < 1000),
    p1identity    int         DEFAULT 111 NOT NULL
                  CONSTRAINT p1c CHECK (p1identity>0 and p1identity < 1000),
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (p2)
)

go


IF OBJECT_ID('myschema.test2') IS NOT NULL
    PRINT '<<< CREATED TABLE myschema.test2 >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE myschema.test2 >>>'
go

/* 
 * TABLE: myschema.test3 
 */

CREATE TABLE myschema.test3(
    p2    char(10)    DEFAULT 'p2value' NOT NULL
)

go


IF OBJECT_ID('myschema.test3') IS NOT NULL
    PRINT '<<< CREATED TABLE myschema.test3 >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE myschema.test3 >>>'
go

/* 
 * TABLE: random 
 */

CREATE TABLE random(
    pp1char    char(10)    NOT NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (pp1char)
)

go


IF OBJECT_ID('random') IS NOT NULL
    PRINT '<<< CREATED TABLE random >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE random >>>'
go

