



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




 ALTER TABLE Visit ADD CONSTRAINT FKf5ed5b97962a47989a1fb6f3690c54f8 FOREIGN KEY (Subscription) REFERENCES Subscription; 
CREATE INDEX Index39d27fa2e6a54c4a9dc238251431623d on Visit (Subscription); 

 ALTER TABLE Visit ADD CONSTRAINT FK8f6b7e4b296145b2acccc916c156c967 FOREIGN KEY (Client) REFERENCES ApplicationUser; 
CREATE INDEX Indexe9fa8960039348c7a8663d5ba396c780 on Visit (Client); 

 ALTER TABLE Service ADD CONSTRAINT FK650d421e896640ab8420c2b9b60ebac7 FOREIGN KEY (Organization_m0) REFERENCES Organization; 
CREATE INDEX Indexdf5a7f9751ef4a778c2fc3e5a4b40264 on Service (Organization_m0); 

 ALTER TABLE EmployeeInOrganization ADD CONSTRAINT FKd12fe19a98bc4ae39e429ba2e71b2b6f FOREIGN KEY (Employee_m0) REFERENCES ApplicationUser; 
CREATE INDEX Index10a931d5839a42089020df6445028620 on EmployeeInOrganization (Employee_m0); 

 ALTER TABLE EmployeeInOrganization ADD CONSTRAINT FK30a5667c47bb4d8ea27335cfcf5fe016 FOREIGN KEY (Organization) REFERENCES Organization; 
CREATE INDEX Indexf5b7d597105c47ad8ff3b3daad96dbbf on EmployeeInOrganization (Organization); 

 ALTER TABLE Subscription ADD CONSTRAINT FKcef517bb68eb48a5a0da434779cdcfe3 FOREIGN KEY (Service_m0) REFERENCES Service; 
CREATE INDEX Indexc290f397697142f89f20161b5195ec1f on Subscription (Service_m0); 

 ALTER TABLE Subscription ADD CONSTRAINT FKfe36baa38d4f494db5ea940b1fc91e00 FOREIGN KEY (Client_m0) REFERENCES ApplicationUser; 
CREATE INDEX Indexf98ac636ec6348e98323be72a5a8bd15 on Subscription (Client_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FKb1cafd4be31f47f499a4e9ed3e3676d4 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKfd490d29838f4282a815b4c6377a8499 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK884a23e69be14d72be936d800457ce86 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

