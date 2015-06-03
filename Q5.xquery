xquery version "1.0";
(: Q5. Find the movie/s with the highest average rating.  :)
(: ----------------------------------------- :)
let $range:= (
for $m in distinct-values(doc("reviews.xml")/reviews/review/Movie_ID)
let $movieID := $m
return
<MaxRating>
    <Movie>
    {
        $movieID
    }
    </Movie>
    <Rating>
    {
        avg(
            for $everymovie in (doc("reviews.xml")/reviews/review)
            return if ($everymovie/Movie_ID = $m)
            then $everymovie/Rating
            else ()
        )
    }
    </Rating>
</MaxRating>)

(:  Now display the movies with maximum rating from all movie's calculated ratings:)

for $finalMaxAvg in $range
where $finalMaxAvg/Rating= max($range/Rating)
return $finalMaxAvg
(: ----------------------------------------- :)
