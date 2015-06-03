xquery version "1.0";
(: Q4. Group reviewers for movies “Goodfellas” and “Inception” using movie Title.  :)
(: ----------------------------------------- :)
let $GoodfellasGrp := 
( 
    <Reviewer>
    <Movie>Goodfellas</Movie>
    {
        for $reviewers in doc("reviewers.xml")/reviewers/reviewer
        order by $reviewers/Reviewer_Name
        return if ($reviewers/Reviewer_ID = (
        for $movies in doc("movies.xml")/movies/movie , $reviews in doc("reviews.xml")/reviews/review
        where $movies/Title='Goodfellas' 
        and $movies/Movie_ID= $reviews/Movie_ID
        return $reviews/Reviewer_ID))
        then $reviewers/Reviewer_Name
        else ()
    }
    </Reviewer>
)
(: ----------------------------------------- :)
let $InceptionGrp := 
( 
    <Reviewer>
    <Movie>Inception</Movie>
    {
        for $reviewers in doc("reviewers.xml")/reviewers/reviewer
        order by $reviewers/Reviewer_Name
        return if ($reviewers/Reviewer_ID = (
        for $movies in doc("movies.xml")/movies/movie , $reviews in doc("reviews.xml")/reviews/review
        where $movies/Title='Inception' 
        and $movies/Movie_ID= $reviews/Movie_ID
        return $reviews/Reviewer_ID))
        then $reviewers/Reviewer_Name
        else ()
    }
    </Reviewer>
)
(: ----------------------------------------- :)
return $GoodfellasGrp union $InceptionGrp
(: ----------------------------------------- :)
