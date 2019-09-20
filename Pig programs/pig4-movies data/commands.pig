moviedata = LOAD 'movies_data.csv' USING PigStorage(',') AS (SNO:int,MovieName:chararray,Year:int,Rating:int);

question 1 
Find movie that are released between 1950 and 1960

FilterByYear= Filter moviedata BY Year>=1950 AND Year<=1960;
finalanswer = FOREACH FilterByYear GENERATE (chararray)$1 ;
STORE finalanswer INTO 'Movie1950AND1960.txt';




question 2 
Find movie that have rating between 3 and 4

FilterByRating = Filter moviedata BY Rating>=3 AND Rating<=4;
RatingAnswer = FOREACH FilterByRating GENERATE CONCAT((chararray)$1,CONCAT(',',(chararray)($3))) ;
STORE RatingAnswer INTO 'FilteredMoviesByRating';
