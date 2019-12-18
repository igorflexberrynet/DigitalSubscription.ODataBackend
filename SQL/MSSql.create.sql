



CREATE TABLE [Visit] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Date] DATETIME  NOT NULL,

	 [Subscription] UNIQUEIDENTIFIER  NOT NULL,

	 [Client] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ApplicationUser] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Email] VARCHAR(255)  NOT NULL,

	 [FirstName] VARCHAR(255)  NOT NULL,

	 [MiddleName] VARCHAR(255)  NULL,

	 [LastName] VARCHAR(255)  NOT NULL,

	 [Birthdate] DATETIME  NULL,

	 [IsAdmin] BIT  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Service] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Name] VARCHAR(255)  NOT NULL,

	 [Price] FLOAT  NOT NULL,

	 [PricePeriod] VARCHAR(9)  NOT NULL,

	 [Organization_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [EmployeeInOrganization] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [EmploymentDate] DATETIME  NULL,

	 [DismissalDate] DATETIME  NULL,

	 [Position] VARCHAR(255)  NULL,

	 [IsAdmin] BIT  NOT NULL,

	 [Employee_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [Organization] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Subscription] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [StartTime] DATETIME  NOT NULL,

	 [EndTime] DATETIME  NULL,

	 [ServiceCount] FLOAT  NOT NULL,

	 [Service_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [Client_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Organization] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Name] VARCHAR(255)  NOT NULL,

	 [Address] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMNETLOCKDATA] (

	 [LockKey] VARCHAR(300)  NOT NULL,

	 [UserName] VARCHAR(300)  NOT NULL,

	 [LockDate] DATETIME  NULL,

	 PRIMARY KEY ([LockKey]))


CREATE TABLE [STORMSETTINGS] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Module] varchar(1000)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [User] varchar(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMAdvLimit] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [User] varchar(255)  NULL,

	 [Published] bit  NULL,

	 [Module] varchar(255)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [HotKeyData] int  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERSETTING] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMWEBSEARCH] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [Order] INT  NOT NULL,

	 [PresentView] varchar(255)  NOT NULL,

	 [DetailedView] varchar(255)  NOT NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERDETAIL] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Caption] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 [ConnectMasterProp] varchar(255)  NOT NULL,

	 [OwnerConnectProp] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERLOOKUP] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [DataObjectType] varchar(255)  NOT NULL,

	 [Container] varchar(255)  NULL,

	 [ContainerTag] varchar(255)  NULL,

	 [FieldsToView] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [UserSetting] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [AppName] varchar(256)  NULL,

	 [UserName] varchar(512)  NULL,

	 [UserGuid] uniqueidentifier  NULL,

	 [ModuleName] varchar(1024)  NULL,

	 [ModuleGuid] uniqueidentifier  NULL,

	 [SettName] varchar(256)  NULL,

	 [SettGuid] uniqueidentifier  NULL,

	 [SettLastAccessTime] DATETIME  NULL,

	 [StrVal] varchar(256)  NULL,

	 [TxtVal] varchar(max)  NULL,

	 [IntVal] int  NULL,

	 [BoolVal] bit  NULL,

	 [GuidVal] uniqueidentifier  NULL,

	 [DecimalVal] decimal(20,10)  NULL,

	 [DateTimeVal] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ApplicationLog] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Category] varchar(64)  NULL,

	 [EventId] INT  NULL,

	 [Priority] INT  NULL,

	 [Severity] varchar(32)  NULL,

	 [Title] varchar(256)  NULL,

	 [Timestamp] DATETIME  NULL,

	 [MachineName] varchar(32)  NULL,

	 [AppDomainName] varchar(512)  NULL,

	 [ProcessId] varchar(256)  NULL,

	 [ProcessName] varchar(512)  NULL,

	 [ThreadName] varchar(512)  NULL,

	 [Win32ThreadId] varchar(128)  NULL,

	 [Message] varchar(2500)  NULL,

	 [FormattedMessage] varchar(max)  NULL,

	 PRIMARY KEY ([primaryKey]))




 ALTER TABLE [Visit] ADD CONSTRAINT [Visit_FSubscription_0] FOREIGN KEY ([Subscription]) REFERENCES [Subscription]
CREATE INDEX Visit_ISubscription on [Visit] ([Subscription])

 ALTER TABLE [Visit] ADD CONSTRAINT [Visit_FApplicationUser_0] FOREIGN KEY ([Client]) REFERENCES [ApplicationUser]
CREATE INDEX Visit_IClient on [Visit] ([Client])

 ALTER TABLE [Service] ADD CONSTRAINT [Service_FOrganization_0] FOREIGN KEY ([Organization_m0]) REFERENCES [Organization]
CREATE INDEX Service_IOrganization_m0 on [Service] ([Organization_m0])

 ALTER TABLE [EmployeeInOrganization] ADD CONSTRAINT [EmployeeInOrganization_FApplicationUser_0] FOREIGN KEY ([Employee_m0]) REFERENCES [ApplicationUser]
CREATE INDEX EmployeeInOrganization_IEmployee_m0 on [EmployeeInOrganization] ([Employee_m0])

 ALTER TABLE [EmployeeInOrganization] ADD CONSTRAINT [EmployeeInOrganization_FOrganization_0] FOREIGN KEY ([Organization]) REFERENCES [Organization]
CREATE INDEX EmployeeInOrganization_IOrganization on [EmployeeInOrganization] ([Organization])

 ALTER TABLE [Subscription] ADD CONSTRAINT [Subscription_FService_0] FOREIGN KEY ([Service_m0]) REFERENCES [Service]
CREATE INDEX Subscription_IService_m0 on [Subscription] ([Service_m0])

 ALTER TABLE [Subscription] ADD CONSTRAINT [Subscription_FApplicationUser_0] FOREIGN KEY ([Client_m0]) REFERENCES [ApplicationUser]
CREATE INDEX Subscription_IClient_m0 on [Subscription] ([Client_m0])

 ALTER TABLE [STORMWEBSEARCH] ADD CONSTRAINT [STORMWEBSEARCH_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERDETAIL] ADD CONSTRAINT [STORMFILTERDETAIL_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERLOOKUP] ADD CONSTRAINT [STORMFILTERLOOKUP_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

