



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




 ALTER TABLE Visit ADD CONSTRAINT FK13574575b7ea4658b5b842da16203ebb FOREIGN KEY (Subscription) REFERENCES Subscription; 
CREATE INDEX Index2ed07dbc63b243b3b3a52bec3744b74e on Visit (Subscription); 

 ALTER TABLE Visit ADD CONSTRAINT FK05cd66879bc54913b50fc76731dce028 FOREIGN KEY (Client) REFERENCES ApplicationUser; 
CREATE INDEX Index2255c2b068bd48ae8054ffa240a2ef9a on Visit (Client); 

 ALTER TABLE Service ADD CONSTRAINT FK2d879bf8b13b4395809f61f9c68ca577 FOREIGN KEY (Organization_m0) REFERENCES Organization; 
CREATE INDEX Index7da215ec4e6f4df990f2d2b6fa2260a6 on Service (Organization_m0); 

 ALTER TABLE EmployeeInOrganization ADD CONSTRAINT FK38590bca1a7645bbb7426c96c8f43831 FOREIGN KEY (Employee_m0) REFERENCES ApplicationUser; 
CREATE INDEX Index67fc13659e354d60ab789cead93c9385 on EmployeeInOrganization (Employee_m0); 

 ALTER TABLE EmployeeInOrganization ADD CONSTRAINT FKa84c30b6e5b54edd86e806acea528be5 FOREIGN KEY (Organization) REFERENCES Organization; 
CREATE INDEX Indexba63773ed8fa4fb3ae6d29b1351ce441 on EmployeeInOrganization (Organization); 

 ALTER TABLE Subscription ADD CONSTRAINT FK02e50cce1fac442ba5f7a48c5727a8cd FOREIGN KEY (Service_m0) REFERENCES Service; 
CREATE INDEX Index746cc692050e4e2aa7c6a0aac635dd0f on Subscription (Service_m0); 

 ALTER TABLE Subscription ADD CONSTRAINT FKb7dd831681bc4b8991a24ccc2db98871 FOREIGN KEY (Client_m0) REFERENCES ApplicationUser; 
CREATE INDEX Index1d5df5b4b4494505a53fa7fa09847efa on Subscription (Client_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK78f6ded9a94f426aad64a39858de6dea FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FK0a52cb4621fa48f3b3dbb11ac3d45bef FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FKb507ac9166304fcaa375f24571d608f6 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

