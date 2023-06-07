BEGIN TRANSACTION;
CREATE TABLE "BatchCalcJobDefinition" (
	id INTEGER NOT NULL, 
	"DeveloperName" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	"IsTemplate" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "BatchCalcJobDefinition" VALUES(1,'Client_Financial_Interests_AE_Account','en_US','Client Financial Interests','ActionableList','False');
CREATE TABLE "FinServ__IndustriesSettings__c" (
	id INTEGER NOT NULL, 
	"FinServ__Enable__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "FinServ__IndustriesSettings__c" VALUES(1,'True','Disable Primary Contact ID');
CREATE TABLE "Folder" (
	id INTEGER NOT NULL, 
	"AccessType" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"IsReadonly" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Folder" VALUES(1,'Public','CompanyDashboards','False','Company Dashboards','Dashboard');
INSERT INTO "Folder" VALUES(2,'Hidden','Public_Dashboards','True','Public Dashboards','Dashboard');
INSERT INTO "Folder" VALUES(3,'Public','ExactTargetDocuments','True','Marketing Cloud Documents','Document');
INSERT INTO "Folder" VALUES(4,'Public','SharedDocuments','False','Shared Documents','Document');
INSERT INTO "Folder" VALUES(5,'Public','VlocityDocumentUploads','True','Vlocity Document Uploads','Document');
INSERT INTO "Folder" VALUES(6,'Public','VlocityResources','True','Vlocity Resources','Document');
INSERT INTO "Folder" VALUES(7,'Public','ExactTarget','True','Marketing Cloud','Email');
INSERT INTO "Folder" VALUES(8,'Hidden','WAVE_PUBLIC_DATAFLOWS','True','WavePublicDataflowsLabel','Insights');
INSERT INTO "Folder" VALUES(9,'Hidden','ActionableSegmentation','True','Actionable Segmentation','Insights');
INSERT INTO "Folder" VALUES(10,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(11,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(12,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(13,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(14,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(15,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(16,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(17,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(18,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(19,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(20,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(21,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(22,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(23,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(24,'Public','','True','','Report');
INSERT INTO "Folder" VALUES(25,'Hidden','ExactTarget_Admin','True','Marketing Cloud Admin','Report');
INSERT INTO "Folder" VALUES(26,'Hidden','ExactTarget_Subscriber_Reports','True','Subscriber Reports','Report');
INSERT INTO "Folder" VALUES(27,'Hidden','ExactTarget_Tracking_Reports','True','Tracking Reports','Report');
INSERT INTO "Folder" VALUES(28,'Hidden','Advisor_Reports','True','Advisor Reports','Report');
INSERT INTO "Folder" VALUES(29,'Hidden','BankingReports','True','Banking Reports','Report');
INSERT INTO "Folder" VALUES(30,'Hidden','MyTopReferrers','True','My Top Referrers','Report');
INSERT INTO "Folder" VALUES(31,'Hidden','ReferralPerformance','True','Referral Performance','Report');
CREATE TABLE "InsightsExternalData" (
	id INTEGER NOT NULL, 
	"LicenseType" VARCHAR(255), 
	"CompressedMetadataLength" VARCHAR(255), 
	"Format" VARCHAR(255), 
	"Dataflow" VARCHAR(255), 
	"EdgemartAlias" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EdgemartContainer" VARCHAR(255), 
	"EdgemartLabel" VARCHAR(255), 
	"Operation" VARCHAR(255), 
	"IsIndependentParts" VARCHAR(255), 
	"FileName" VARCHAR(255), 
	"MetadataJson" VARCHAR(255), 
	"MetaDataLength" VARCHAR(255), 
	"NotificationEmail" VARCHAR(255), 
	"NotificationSent" VARCHAR(255), 
	"Action" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"StatusMessage" VARCHAR(255), 
	"SubmittedDate" VARCHAR(255), 
	"IsDependentOnLastUpload" VARCHAR(255), 
	"Target" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "InsightsExternalData" VALUES(1,'EinsteinAnalytics','436','Csv','02K8K000000JjwgUAC','sample','','00l8K000000HJGKQA4','sample','Overwrite','False','','/services/data/v55.0/sobjects/InsightsExternalData/06V8K000000EpoSUAS/MetadataJson','1832','','Never','Process','Completed','','','False','');
CREATE TABLE "WaveAutoInstallRequest" (
	id INTEGER NOT NULL, 
	"Configuration" VARCHAR(255), 
	"RequestLog" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RequestStatus" VARCHAR(255), 
	"RequestType" VARCHAR(255), 
	"TemplateApiName" VARCHAR(255), 
	"TemplateVersion" VARCHAR(255), 
	"FolderId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "WaveAutoInstallRequest" VALUES(1,'{"appConfiguration":{"failOnDuplicateNames":false,"autoShareWithLicensedUsers":true,"autoShareWithOriginator":true,"deleteAppOnConstructionFailure":true,"licenseAttributes":null,"values":{},"dynamicOptions":{},"folderId":null,"appName":null,"appLabel":null,"appDescription":null},"waveEnableConfiguration":null,"originatingUserId":null,"originatingOrgId":null,"templateApiName":"sfdc_internal__ActionableSegmentation","parentRequestIds":[],"installInsights":false,"installWaveReplication":false}','Auto-install request completed successfully.','AutoInstallRequest WaveAppCreate','Success','WaveAppCreate','sfdc_internal__ActionableSegmentation','1.0','9');
COMMIT;
