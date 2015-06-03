xquery version "1.0";
(: Q3. Show the total number of movies released in each year.  :)
(: ----------------------------------------- :)
<Movies_ReleasePerYear>{
    let $mCount :=
        for $year in doc("movies.xml")/movies/movie/year-from-date(Release_Date)
        order by $year
            return if(not($year)) then concat($year, ' ')
            else concat($year, '')
    for $year in distinct-values($mCount)
    return <Movies_Year>{'Year :',$year,'- Count :', count($mCount[. eq $year])}</Movies_Year>
}</Movies_ReleasePerYear>
(: ----------------------------------------- :)
