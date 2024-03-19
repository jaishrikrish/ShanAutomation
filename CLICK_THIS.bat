@echo off
REM #######MONGODB DETAILS##############
set mongoServer=test
set mongodbCollection=test
set mongoDatabase=test
REM set mavenPath=D:\AUTOMATION1\apache-maven\bin

REM #######PROJECT DETAILS##############
set projectPath=C:\MTEmailAutomation\SHAUN_AUTOMATION\
set TaxFilePath=C:\MTEmailAutomation\SHAUN_AUTOMATION\TaxFolders

REM #######EMAIL DETAILS##############
set fromEmail=
set emailPwd=
set emailSubject="Tax Summary report and Schedules for 2023"

REM #######PREFERENCE##############
REM How would you like to execute this job?
REM if you would like to execute from MongoDB, TYPE "MONGO" [W/O QUOTES] in preference
REM If you would like to execute the old job direct from excel, TYPE "EXCEL"  [W/O QUOTES] in preference
set preference=EXCEL

%projectPath%MongoDB_Tax_File_Automation\Job_3_Preference_Selection_Final_Job\Job_3_Preference_Selection_Final_Job_run.bat --context_param mongoServer=%mongoServer% --context_param mongodbCollection=%mongodbCollection% --context_param mongoDatabase=%mongoDatabase% --context_param projectPath=%projectPath% --context_param TaxFilePath=%TaxFilePath% --context_param fromEmail=%fromEmail% --context_param pwd=%emailPwd% --context_param subject=%emailSubject% --context_param preference=%preference%