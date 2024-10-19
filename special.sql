SELECT * FROM USER WHERE ID <= 100 ORDER BY Time_Registered ASC;
/* This is to select the first 100 people in database and arrange them according to the time they registered.ALTER */

SELECT EVENT.ID, COUNT (USER.ID) AS total_users FROM Event_User GROUP BY EVENT.ID;
/* This is to count the total number of registered users for the event.*/ 

