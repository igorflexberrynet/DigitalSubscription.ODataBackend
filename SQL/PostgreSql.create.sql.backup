



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




 ALTER TABLE Visit ADD CONSTRAINT FK81ffbf154748449fa6be670c65cedc6d FOREIGN KEY (Subscription) REFERENCES Subscription; 
CREATE INDEX Index3c045209d2114280a6a76fa0b1a9876c on Visit (Subscription); 

 ALTER TABLE Visit ADD CONSTRAINT FKd9cc4676e66e40bd8da18fc49c9f14c8 FOREIGN KEY (Client) REFERENCES ApplicationUser; 
CREATE INDEX Indexe84ed58da7074a64b9bb07fc89dedf18 on Visit (Client); 

 ALTER TABLE Service ADD CONSTRAINT FK72353db99b304405a5b0863afc78b3d2 FOREIGN KEY (Organization_m0) REFERENCES Organization; 
CREATE INDEX Indexdbf008ca2a1f4f63a386670e2856a02b on Service (Organization_m0); 

 ALTER TABLE EmployeeInOrganization ADD CONSTRAINT FK93e0f1b825454322ade5253d60cb8915 FOREIGN KEY (Employee_m0) REFERENCES ApplicationUser; 
CREATE INDEX Indexde7c87dcfd5048a3beb8c35462f90ed0 on EmployeeInOrganization (Employee_m0); 

 ALTER TABLE EmployeeInOrganization ADD CONSTRAINT FK0507c798023549a392cffc3b8047475f FOREIGN KEY (Organization) REFERENCES Organization; 
CREATE INDEX Indexcdd054ce85584704b73626ccbb6739d4 on EmployeeInOrganization (Organization); 

 ALTER TABLE Subscription ADD CONSTRAINT FK16ea475d1b1a4bb89fffe26e0cf29b99 FOREIGN KEY (Service_m0) REFERENCES Service; 
CREATE INDEX Index14612581f69646fd8593867031a820f9 on Subscription (Service_m0); 

 ALTER TABLE Subscription ADD CONSTRAINT FK1c85360e967248d0bc0133b24fa73889 FOREIGN KEY (Client_m0) REFERENCES ApplicationUser; 
CREATE INDEX Index4ac2dc8c27e6441fa93ae1f568282f26 on Subscription (Client_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK2f005cdc211d43af930b8d3ba2bc7f59 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FK88aa137be2e148fcbcfa03414ed6c525 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK2f843c2ed5804343913d6ac53ddca806 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

