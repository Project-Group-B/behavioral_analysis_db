# behavioral_analysis_db
The database for the behavioral analysis project for the zoo, by Project Group B, 2019


LOCAL SETUP (MYSQL WORKBENCH 8

1) Download the MySql Server and MySql Workbench:
https://dev.mysql.com/downloads/installer/
2) Follow the instructions and use default options to set everything up
3) Open workbench and login to your localhost
4) On the left side, click Administration -> Management -> Data/Import Restore
5) Download the file folder from here
6) In server create an empty schema that matches the name `"behavioral_analysis_db"`
7) Choose "import from dump folder" and browse to where you downloaded this

DEPLOYMENT SETUP
1) Ensure running SQL 8.0.x or higher. Older versions, especially the default 5.x.x do not have support for some table features/character sets and will not work with this project.
2) Import the SQL from the repository into your MySQL instance. 
3) Ensure SQL connections between the MySQL host machine the back end host machine are allowed on port 3306. 
4) Insert a default user to associate not yet approved entries with.
  `INSERT INTO user (User_Name,User_Pass,User_Status,User_Department,User_FirstName,User_LastName);`
  ``UPDATE `behavioral_analysis_db`.user` SET `User_Pass` = sha2('User_Pass',256) WHERE (`User_Id` = '0');``
