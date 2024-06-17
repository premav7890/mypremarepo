
-- Dictionary Object Alter SQL

CREATE DEFAULT sdf AS 33
go



-- Drop Constraint, Rename and Create Table SQL

CREATE TABLE myschema.bookmodify
(
    l1      int         DEFAULT (100) NOT NULL,
    subject varchar(10) NOT NULL,
    b1int   int         DEFAULT (100) NULL,
    name    char(10)    NULL,
    CONSTRAINT PK4
    PRIMARY KEY NONCLUSTERED (l1,subject),
    CONSTRAINT b1
    CHECK (b1int > 10 AND b1int < 50),
    CHECK (b1int =10)
)
ON [PRIMARY]
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'custom domain definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'bookmodify',@level2type=N'COLUMN',@level2name=N'l1'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'custom domain definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'bookmodify',@level2type=N'COLUMN',@level2name=N'b1int'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'book  definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'bookmodify'
go
IF OBJECT_ID(N'myschema.bookmodify') IS NOT NULL
    PRINT N'<<< CREATED TABLE myschema.bookmodify >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE myschema.bookmodify >>>'
go


CREATE TABLE myschema.car
(
    id      char(10) NOT NULL,
    model   char(10) NULL,
    carname char(10) NULL,
    CONSTRAINT PK7
    PRIMARY KEY NONCLUSTERED (id)
)
ON [PRIMARY]
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'id definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'car',@level2type=N'COLUMN',@level2name=N'id'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'model definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'car',@level2type=N'COLUMN',@level2name=N'model'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'car definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'car',@level2type=N'COLUMN',@level2name=N'carname'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'car definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'car'
go
IF OBJECT_ID(N'myschema.car') IS NOT NULL
    PRINT N'<<< CREATED TABLE myschema.car >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE myschema.car >>>'
go


CREATE TABLE myschema.ChildDomain
(
    primarycol char(10)  NOT NULL,
    domaincol  [INTEGER] DEFAULT (100) NOT NULL,
    CONSTRAINT PK19
    PRIMARY KEY NONCLUSTERED (primarycol,domaincol),
    CHECK (domaincol =10)
)
ON [PRIMARY]
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'custom domain definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'ChildDomain',@level2type=N'COLUMN',@level2name=N'domaincol'
go
IF OBJECT_ID(N'myschema.ChildDomain') IS NOT NULL
    PRINT N'<<< CREATED TABLE myschema.ChildDomain >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE myschema.ChildDomain >>>'
go


CREATE TABLE myschema.library
(
    l1         int           DEFAULT (100) NOT NULL,
    roomnumber numeric(10,0) NULL,
    name       char(10)      DEFAULT (33) NULL,
    CONSTRAINT PK3
    PRIMARY KEY NONCLUSTERED (l1),
    CONSTRAINT l1
    CHECK (l1 > 10 AND l1 < 50),
    CHECK (l1 =10)
)
ON [PRIMARY]
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'l1 definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'library',@level2type=N'COLUMN',@level2name=N'l1'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'room definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'library',@level2type=N'COLUMN',@level2name=N'roomnumber'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'name definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'library',@level2type=N'COLUMN',@level2name=N'name'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'library definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'library'
go
IF OBJECT_ID(N'myschema.library') IS NOT NULL
    PRINT N'<<< CREATED TABLE myschema.library >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE myschema.library >>>'
go


CREATE TABLE myschema.pages
(
    l1         int         DEFAULT (100) NOT NULL,
    pagenumber int         NOT NULL,
    subject    varchar(10) NOT NULL,
    content    text        NULL,
    CONSTRAINT PK9
    PRIMARY KEY NONCLUSTERED (l1,pagenumber,subject),
    CHECK (l1 =10)
)
ON [PRIMARY]
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'custom domain definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'pages',@level2type=N'COLUMN',@level2name=N'l1'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'pages definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'pages'
go
IF OBJECT_ID(N'myschema.pages') IS NOT NULL
    PRINT N'<<< CREATED TABLE myschema.pages >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE myschema.pages >>>'
go


CREATE TABLE myschema.ParentDomain
(
    domaincol  [INTEGER]   DEFAULT (100) NOT NULL,
    colvarchar varchar(10) NULL,
    CONSTRAINT PK18
    PRIMARY KEY NONCLUSTERED (domaincol),
    CHECK (domaincol =10)
)
ON [PRIMARY]
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'custom domain definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'ParentDomain',@level2type=N'COLUMN',@level2name=N'domaincol'
go
IF OBJECT_ID(N'myschema.ParentDomain') IS NOT NULL
    PRINT N'<<< CREATED TABLE myschema.ParentDomain >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE myschema.ParentDomain >>>'
go


CREATE TABLE dbo.random
(
    pp1char char(10) NOT NULL,
    CONSTRAINT PK11
    PRIMARY KEY NONCLUSTERED (pp1char)
)
ON [PRIMARY]
go
IF OBJECT_ID(N'dbo.random') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.random >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.random >>>'
go


CREATE TABLE myschema.service
(
    serviceid char(10) NOT NULL,
    location  char(10) NULL,
    center    char(10) NULL,
    id        char(10) NULL,
    CONSTRAINT PK8
    PRIMARY KEY NONCLUSTERED (serviceid)
)
ON [PRIMARY]
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'serviceid definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'service',@level2type=N'COLUMN',@level2name=N'serviceid'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'location definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'service',@level2type=N'COLUMN',@level2name=N'location'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'center definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'service',@level2type=N'COLUMN',@level2name=N'center'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'id definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'service',@level2type=N'COLUMN',@level2name=N'id'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'service definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'service'
go
IF OBJECT_ID(N'myschema.service') IS NOT NULL
    PRINT N'<<< CREATED TABLE myschema.service >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE myschema.service >>>'
go


CREATE TABLE myschema.test1
(
    p1identity int      IDENTITY(1,1),
    col1char   char(10) DEFAULT ('col1value') NOT NULL,
    col2char   char(10) DEFAULT ('col2value') NULL,
    computed   float    NULL,
    CONSTRAINT PK1
    PRIMARY KEY NONCLUSTERED (p1identity),
    CONSTRAINT constr1
    CHECK (p1identity>0 AND p1identity < 100),
    CONSTRAINT testconstraint
    CHECK (p1identity>0 AND p1identity < 100),
    CONSTRAINT col1constraint
    CHECK (p1identity>0 AND p1identity < 100),
    CONSTRAINT col2constraint
    CHECK (p1identity>0 AND p1identity < 100)
)
ON [PRIMARY]
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'p1 definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'test1',@level2type=N'COLUMN',@level2name=N'p1identity'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'col1 definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'test1',@level2type=N'COLUMN',@level2name=N'col1char'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'col2 definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'test1',@level2type=N'COLUMN',@level2name=N'col2char'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'test1 definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'test1'
go
IF OBJECT_ID(N'myschema.test1') IS NOT NULL
    PRINT N'<<< CREATED TABLE myschema.test1 >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE myschema.test1 >>>'
go


CREATE TABLE myschema.test2
(
    p2         char(10) DEFAULT ('p2value') NOT NULL,
    col3char   char(10) DEFAULT ('col3value') NULL,
    col4char   char(10) DEFAULT ('col4value') NULL,
    p1identity int      DEFAULT (111) NOT NULL,
    CONSTRAINT PK2
    PRIMARY KEY NONCLUSTERED (p2),
    CONSTRAINT constrain2
    CHECK (p1identity>0 and p1identity < 1000),
    CONSTRAINT p2c
    CHECK (p1identity>0 and p1identity < 1000),
    CONSTRAINT col3c
    CHECK (p1identity>0 and p1identity < 1000),
    CONSTRAINT col4c
    CHECK (p1identity>0 and p1identity < 1000),
    CONSTRAINT p1c
    CHECK (p1identity>0 and p1identity < 1000)
)
ON [PRIMARY]
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'p2 definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'test2',@level2type=N'COLUMN',@level2name=N'p2'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'col3 definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'test2',@level2type=N'COLUMN',@level2name=N'col3char'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'col4 definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'test2',@level2type=N'COLUMN',@level2name=N'col4char'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'p1 definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'test2',@level2type=N'COLUMN',@level2name=N'p1identity'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'test definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'test2'
go
IF OBJECT_ID(N'myschema.test2') IS NOT NULL
    PRINT N'<<< CREATED TABLE myschema.test2 >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE myschema.test2 >>>'
go


CREATE TABLE myschema.test3
(
    p2 char(10) DEFAULT ('p2value') NOT NULL
)
ON [PRIMARY]
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description',@value=N'p2 definition',@level0type=N'SCHEMA',@level0name=N'myschema',@level1type=N'TABLE',@level1name=N'test3',@level2type=N'COLUMN',@level2name=N'p2'
go
IF OBJECT_ID(N'myschema.test3') IS NOT NULL
    PRINT N'<<< CREATED TABLE myschema.test3 >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE myschema.test3 >>>'
go



-- Update Views SQL

CREATE OR ALTER VIEW myschema.nestedview AS
SELECT Vi.col3char, Vi.col4char
FROM myschema."View from test" Vi
go
IF OBJECT_ID(N'myschema.nestedview') IS NOT NULL
    PRINT N'<<< CREATED VIEW myschema.nestedview >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW myschema.nestedview >>>'
go

CREATE OR ALTER VIEW myschema.[View from test] AS
SELECT te.col3char, te.col4char
FROM myschema.test2 te
WITH CHECK OPTION
go
IF OBJECT_ID(N'myschema.[View from test]') IS NOT NULL
    PRINT N'<<< CREATED VIEW myschema.[View from test] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW myschema.[View from test] >>>'
go

CREATE OR ALTER VIEW myschema.View1 AS
SELECT se.location, se.center
FROM myschema.service se
go
IF OBJECT_ID(N'myschema.View1') IS NOT NULL
    PRINT N'<<< CREATED VIEW myschema.View1 >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW myschema.View1 >>>'
go

CREATE OR ALTER VIEW myschema.View2 AS
SELECT li.roomnumber, li.name, bo.subject, bo.b1int, bo.name name1
FROM myschema.library li, myschema.bookmodify bo
WHERE bo.l1 = li.l1
go
IF OBJECT_ID(N'myschema.View2') IS NOT NULL
    PRINT N'<<< CREATED VIEW myschema.View2 >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW myschema.View2 >>>'
go


-- Add Referencing Foreign Keys SQL


ALTER TABLE myschema.bookmodify
    ADD CONSTRAINT librarybook
    FOREIGN KEY (l1)
    REFERENCES myschema.library (l1)
go


ALTER TABLE myschema.ChildDomain
    ADD 
    FOREIGN KEY (domaincol)
    REFERENCES myschema.ParentDomain (domaincol)
go


ALTER TABLE myschema.pages
    ADD 
    FOREIGN KEY (l1,subject)
    REFERENCES myschema.bookmodify (l1,subject)
go


ALTER TABLE myschema.service
    ADD CONSTRAINT carservice
    FOREIGN KEY (id)
    REFERENCES myschema.car (id)
go


ALTER TABLE myschema.test2
    ADD CONSTRAINT test1test2
    FOREIGN KEY (p1identity)
    REFERENCES myschema.test1 (p1identity)
go


ALTER TABLE myschema.test3
    ADD 
    FOREIGN KEY (p2)
    REFERENCES myschema.test2 (p2)
go

