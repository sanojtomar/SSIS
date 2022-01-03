### Install Newtonsoft.Json  dll (for JSON parser) in GAC: 
Open VS command prompt in admin mode and run below GAC command

 ![image](https://user-images.githubusercontent.com/11496706/147901720-53619806-8405-4db1-8f00-41dd46f90d21.png)


	gacutil /i  "C:\All Files\Learning\SSIS\open.gsa.gov\open.gsa.gov\lib\Newtonsoft.Json.dll"
Change above path to dll location on your machine


###  Execute script from folder \open.gsa.gov\sql
It will create tables and stored procedures

### Change parameters in SSIS package
1.	API URL
2.	API Key
3.	DB connection string

![image](https://user-images.githubusercontent.com/11496706/147901787-8eca5bef-a998-4fea-9d00-ee0f7300d369.png)
