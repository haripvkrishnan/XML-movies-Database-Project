xquery version "1.0";
(: Q6. Group movies by Genre where Genre is either “Crime” or “Action” or “Sci-Fi”.  :)
(: ----------------------------------------- :)
let $ActionGrp := 
( 
<Genre>
    <GenreValue> Action </GenreValue>{
    let $one :=
    (
    for $movie in doc("movies.xml")/movies/movie
    where matches($movie/Genre, 'Action')
    return $movie/Movie_ID
    )
    return $one
    }
</Genre>
)
(: ----------------------------------------- :)
let $CrimeGrp := 
( 
    <Genre>
    <GenreValue> Crime </GenreValue>{
    let $one :=
    (
    for $movie in doc("movies.xml")/movies/movie
    where matches($movie/Genre, 'Crime')
    return $movie/Movie_ID
    )
    return $one
    }
</Genre>
)
(: ----------------------------------------- :)
let $SciFiGrp := 
( 
<Genre>
    <GenreValue> Sci-Fi </GenreValue>{
    let $one :=
    (
    for $movie in doc("movies.xml")/movies/movie
    where matches($movie/Genre, 'Sci-Fi')
    return $movie/Movie_ID
    )
    return $one
    }
</Genre>
)
(: ----------------------------------------- :)
return $ActionGrp union $CrimeGrp union $SciFiGrp
(: ----------------------------------------- :)
