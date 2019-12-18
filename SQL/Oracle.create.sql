



CREATE TABLE "Visit"
(

	"primaryKey" RAW(16) NOT NULL,

	"Date" DATE NOT NULL,

	"Subscription" RAW(16) NOT NULL,

	"Client" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ApplicationUser"
(

	"primaryKey" RAW(16) NOT NULL,

	"Email" NVARCHAR2(255) NOT NULL,

	"FirstName" NVARCHAR2(255) NOT NULL,

	"MiddleName" NVARCHAR2(255) NULL,

	"LastName" NVARCHAR2(255) NOT NULL,

	"Birthdate" DATE NULL,

	"IsAdmin" NUMBER(1) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Service"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" NVARCHAR2(255) NOT NULL,

	"Price" FLOAT(126) NOT NULL,

	"PricePeriod" NVARCHAR2(9) NOT NULL,

	"Organization_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "EmployeeInOrganization"
(

	"primaryKey" RAW(16) NOT NULL,

	"EmploymentDate" DATE NULL,

	"DismissalDate" DATE NULL,

	"Position" NVARCHAR2(255) NULL,

	"IsAdmin" NUMBER(1) NOT NULL,

	"Employee_m0" RAW(16) NOT NULL,

	"Organization" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Subscription"
(

	"primaryKey" RAW(16) NOT NULL,

	"StartTime" DATE NOT NULL,

	"EndTime" DATE NULL,

	"ServiceCount" FLOAT(126) NOT NULL,

	"Service_m0" RAW(16) NOT NULL,

	"Client_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Organization"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" NVARCHAR2(255) NOT NULL,

	"Address" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMNETLOCKDATA"
(

	"LockKey" NVARCHAR2(300) NOT NULL,

	"UserName" NVARCHAR2(300) NOT NULL,

	"LockDate" DATE NULL,

	 PRIMARY KEY ("LockKey")
) ;


CREATE TABLE "STORMSETTINGS"
(

	"primaryKey" RAW(16) NOT NULL,

	"Module" nvarchar2(1000) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"User" nvarchar2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMAdvLimit"
(

	"primaryKey" RAW(16) NOT NULL,

	"User" nvarchar2(255) NULL,

	"Published" NUMBER(1) NULL,

	"Module" nvarchar2(255) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"HotKeyData" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERSETTING"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMWEBSEARCH"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"Order" NUMBER(10) NOT NULL,

	"PresentView" nvarchar2(255) NOT NULL,

	"DetailedView" nvarchar2(255) NOT NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERDETAIL"
(

	"primaryKey" RAW(16) NOT NULL,

	"Caption" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	"ConnectMasterProp" nvarchar2(255) NOT NULL,

	"OwnerConnectProp" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERLOOKUP"
(

	"primaryKey" RAW(16) NOT NULL,

	"DataObjectType" nvarchar2(255) NOT NULL,

	"Container" nvarchar2(255) NULL,

	"ContainerTag" nvarchar2(255) NULL,

	"FieldsToView" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "UserSetting"
(

	"primaryKey" RAW(16) NOT NULL,

	"AppName" nvarchar2(256) NULL,

	"UserName" nvarchar2(512) NULL,

	"UserGuid" RAW(16) NULL,

	"ModuleName" nvarchar2(1024) NULL,

	"ModuleGuid" RAW(16) NULL,

	"SettName" nvarchar2(256) NULL,

	"SettGuid" RAW(16) NULL,

	"SettLastAccessTime" DATE NULL,

	"StrVal" nvarchar2(256) NULL,

	"TxtVal" CLOB NULL,

	"IntVal" NUMBER(10) NULL,

	"BoolVal" NUMBER(1) NULL,

	"GuidVal" RAW(16) NULL,

	"DecimalVal" NUMBER(20,10) NULL,

	"DateTimeVal" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ApplicationLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"Category" nvarchar2(64) NULL,

	"EventId" NUMBER(10) NULL,

	"Priority" NUMBER(10) NULL,

	"Severity" nvarchar2(32) NULL,

	"Title" nvarchar2(256) NULL,

	"Timestamp" DATE NULL,

	"MachineName" nvarchar2(32) NULL,

	"AppDomainName" nvarchar2(512) NULL,

	"ProcessId" nvarchar2(256) NULL,

	"ProcessName" nvarchar2(512) NULL,

	"ThreadName" nvarchar2(512) NULL,

	"Win32ThreadId" nvarchar2(128) NULL,

	"Message" nvarchar2(2000) NULL,

	"FormattedMessage" nvarchar2(2000) NULL,

	 PRIMARY KEY ("primaryKey")
) ;



ALTER TABLE "Visit"
	ADD CONSTRAINT "Visit_FSubscription_0" FOREIGN KEY ("Subscription") REFERENCES "Subscription" ("primaryKey");

CREATE INDEX "Visit_ISubscription" on "Visit" ("Subscription");

ALTER TABLE "Visit"
	ADD CONSTRAINT "Visit_FApplicationUser_0" FOREIGN KEY ("Client") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "Visit_IClient" on "Visit" ("Client");

ALTER TABLE "Service"
	ADD CONSTRAINT "Service_FOrganization_0" FOREIGN KEY ("Organization_m0") REFERENCES "Organization" ("primaryKey");

CREATE INDEX "Service_IOrganization_m0" on "Service" ("Organization_m0");

ALTER TABLE "EmployeeInOrganization"
	ADD CONSTRAINT "EmployeeInOrganization_FAp_820" FOREIGN KEY ("Employee_m0") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "EmployeeInOrganization_IE_4242" on "EmployeeInOrganization" ("Employee_m0");

ALTER TABLE "EmployeeInOrganization"
	ADD CONSTRAINT "EmployeeInOrganization_FO_3799" FOREIGN KEY ("Organization") REFERENCES "Organization" ("primaryKey");

CREATE INDEX "EmployeeInOrganization_IO_2708" on "EmployeeInOrganization" ("Organization");

ALTER TABLE "Subscription"
	ADD CONSTRAINT "Subscription_FService_0" FOREIGN KEY ("Service_m0") REFERENCES "Service" ("primaryKey");

CREATE INDEX "Subscription_IService_m0" on "Subscription" ("Service_m0");

ALTER TABLE "Subscription"
	ADD CONSTRAINT "Subscription_FApplication_8183" FOREIGN KEY ("Client_m0") REFERENCES "ApplicationUser" ("primaryKey");

CREATE INDEX "Subscription_IClient_m0" on "Subscription" ("Client_m0");

ALTER TABLE "STORMWEBSEARCH"
	ADD CONSTRAINT "STORMWEBSEARCH_FSTORMFILT_6521" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERDETAIL"
	ADD CONSTRAINT "STORMFILTERDETAIL_FSTORMF_2900" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERLOOKUP"
	ADD CONSTRAINT "STORMFILTERLOOKUP_FSTORMF_1583" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");


