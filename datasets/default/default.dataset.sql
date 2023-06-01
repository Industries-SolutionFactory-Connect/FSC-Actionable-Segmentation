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
COMMIT;
