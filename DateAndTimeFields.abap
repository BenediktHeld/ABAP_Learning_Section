REPORT ZBENEDIKT2.

*****************************
** Date and Time Fields
* Date fields format: YYYYMMDD with initial value of '00000000'
DATA my_date TYPE d VALUE '20240107'. 
WRITE my_date.  " Output the specified date

*****************************
* Time fields format: HHMMSS with initial value of '000000' 
DATA my_time TYPE t VALUE '111005'. 
WRITE my_time.  " Output the specified time

*****************************
DATA empl_sdate TYPE d. 
DATA todays_date TYPE d. 
DATA los TYPE i. 

empl_sdate = '20090515'.  " Employee start date
todays_date = sy-datum.   " Get today's date
los = todays_date - empl_sdate.  " Calculate the difference in days

* Output in Days
WRITE / los.  " Output the number of days between today and the employee's start date

*****************************
DATA days_count TYPE i. 
DATA Fut_date TYPE d. 

todays_date = sy-datum.  " Get today's date again
days_count = 20.  " Number of days to add
Fut_date = todays_date + days_count.  " Calculate future date by adding days_count
WRITE / Fut_date.  " Output the future date
