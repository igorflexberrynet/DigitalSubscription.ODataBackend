



CREATE TABLE Visit (

 primaryKey UUID NOT NULL,

 Date TIMESTAMP(3) NOT NULL,

 Subscription UUID NOT NULL,

 Client UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ApplicationUser (

 primaryKey UUID NOT NULL,

 Email VARCHAR(255) NOT NULL,

 FirstName VARCHAR(255) NOT NULL,

 MiddleName VARCHAR(255) NULL,

 LastName VARCHAR(255) NOT NULL,

 Birthdate TIMESTAMP(3) NULL,

 IsAdmin BOOLEAN NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Service (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 Price DOUBLE PRECISION NOT NULL,

 PricePeriod VARCHAR(9) NOT NULL,

 Organization_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE EmployeeInOrganization (

 primaryKey UUID NOT NULL,

 EmploymentDate TIMESTAMP(3) NULL,

 DismissalDate TIMESTAMP(3) NULL,

 Position VARCHAR(255) NULL,

 IsAdmin BOOLEAN NOT NULL,

 Employee_m0 UUID NOT NULL,

 Organization UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Subscription (

 primaryKey UUID NOT NULL,

 StartTime TIMESTAMP(3) NOT NULL,

 EndTime TIMESTAMP(3) NULL,

 ServiceCount DOUBLE PRECISION NOT NULL,

 Service_m0 UUID NOT NULL,

 Client_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Organization (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 Address VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));


CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE Visit ADD CONSTRAINT FK706ef4170b4d46e2b62980533b025779 FOREIGN KEY (Subscription) REFERENCES Subscription; 
CREATE INDEX Index3ac764b4f394440da42bbce890b03f3d on Visit (Subscription); 

 ALTER TABLE Visit ADD CONSTRAINT FK6a0ef37df37a4f4f966bc3f5966f6e0e FOREIGN KEY (Client) REFERENCES ApplicationUser; 
CREATE INDEX Index23d08c868d4b46ab8840148e577b40a7 on Visit (Client); 

 ALTER TABLE Service ADD CONSTRAINT FKac81ba7310c748bd8b0a47e5ea081e2c FOREIGN KEY (Organization_m0) REFERENCES Organization; 
CREATE INDEX Indexf0077862559349a9afb0acd95bafc7ed on Service (Organization_m0); 

 ALTER TABLE EmployeeInOrganization ADD CONSTRAINT FKbe7987ce37874c048bcf235c53698d9d FOREIGN KEY (Employee_m0) REFERENCES ApplicationUser; 
CREATE INDEX Indexec902bc4fc6f4b169fca79559dc74eea on EmployeeInOrganization (Employee_m0); 

 ALTER TABLE EmployeeInOrganization ADD CONSTRAINT FK061b893d353847f3a3440abdb14ebbd1 FOREIGN KEY (Organization) REFERENCES Organization; 
CREATE INDEX Index29762e9d921146eda34c7d4c83982b55 on EmployeeInOrganization (Organization); 

 ALTER TABLE Subscription ADD CONSTRAINT FK23d667f1647e48d789b7aca14d322fab FOREIGN KEY (Service_m0) REFERENCES Service; 
CREATE INDEX Index236c6ff857db4be3b1e1e5d77679ff27 on Subscription (Service_m0); 

 ALTER TABLE Subscription ADD CONSTRAINT FKb80d29b7e44448ee9b19b12b9a15fd2b FOREIGN KEY (Client_m0) REFERENCES ApplicationUser; 
CREATE INDEX Index4890afa55d2c470fba2375276d06ca90 on Subscription (Client_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FKc19dd9ac2a164c2abebd0825614ecc7f FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FK32f5dd5cebe34d13ac97dbbfe9191042 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FKc4f2c8affd474d558fada5094b46e3eb FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

