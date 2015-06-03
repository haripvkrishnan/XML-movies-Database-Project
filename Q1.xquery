xquery version "1.0";
(: Q1. Find movie/s with the largest runtime.  :)
(: ----------------------------------------- :)
<Largest_Runtime_Movies>{
    for $movie in doc("movies.xml")/movies/movie
    where $movie/Runtime = max(
        for $runtime in doc("movies.xml")/movies/movie/Runtime
        return $runtime
    )return 
    <Movie>{($movie/Movie_ID,$movie/Title, $movie/Runtime)}</Movie>
}</Largest_Runtime_Movies>
(: ----------------------------------------- :)
