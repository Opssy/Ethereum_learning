pragma solidity >= 0.7.0 < 0.9.0;


contract structs{
    struct Movie{
        //add director variable, movie title, and movie  id
        string title;
        string director;
        uint movie_id;
    }
      
      Movie movie;

    function setMovie() public {
       movie =  Movie('Blade runner', 'Ridley Mun', 1);
    }
    function getMovie() public view returns(uint){
        return movie.movie_id;
    }
}