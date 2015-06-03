# Database
Database Management System
# Project specification:<br>
<br>Consider a web service MyMdb “my movie database” which stores movies, reviews and reviewers.
<br>For each movie, MyMdb stores the following information. 
<br>● Movie_ID, Title, Director, Writer, Genre, Release_Date, Runtime
<br>Constraints:
<br>● Release_Date is in the format(YYYY-MM-DD)
<br>● Movie_ID, Title, Director, Genre and Release_Date are mandatory and occur only once
<br>● Writer is mandatory and can occur more than once
<br>● Runtime is optional
<br>For each review, MyMdb stores the following information
<br>● Reviewer_ID, Movie_ID, Rating, Review_Date
<br>Constraints:
<br>● Review_Date format is YYYY-MM-DD
<br>● ￼ Reviewer_ID, Movie_ID, Rating, Review_Date are mandatory & can occur only once
<br>● Rating values are in the range 1-10
<br>● Order of elements for review is:
<br>○ Reviewer_ID ○ Movie_ID
<br>○ Rating
<br>○ Review_Date
<br>For each reviewer, MyMdb stores the following information <br>● Reviewer_ID, Reviewer_Name, Reviewer_DOB
<br>Constraints:
<br>● Reviewer_DOB format is YYYY-MM-DD
<br>● ￼ Reviewer_ID, Reviewer_Name, Reviewer_DOB are mandatory & can occur only once
<br>Data for movies, reviews and reviewers are in the mymdb.xlsx file.
<br>● All dates are in the format: YYYY-MM-DD
<br>● Writer column is comma separated list of writers
<br>● Genre column is space separated list of genres
