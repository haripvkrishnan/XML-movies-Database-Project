xquery version "1.0";
(: Q2. Sort movies written and directed by “Christopher Nolan” in ascending order using Release_Date.  :)
(: ----------------------------------------- :)
<Christopher_Movies> {
    for $movies in doc("movies.xml")/movies/movie
    where $movies/Director = 'Christopher Nolan'
          and $movies/Writer = 'Christopher Nolan'
    order by $movies/Release_Date
    return <Movie>{($movies/Movie_ID,$movies/Title,$movies/Release_Date)}</Movie>
}
</Christopher_Movies>
(: ----------------------------------------- :)
