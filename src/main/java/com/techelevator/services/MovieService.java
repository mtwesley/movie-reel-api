package com.techelevator.services;

import com.techelevator.model.Movie;
import org.springframework.web.client.RestTemplate;

import java.util.List;

public class MovieService {

    private static final String API_BASE_URL = "https://api.themoviedb.org/3/";

    private static final String API_KEY = "d19868d1711164512199ca8d6fad28f0";

    private final Movie movie;

    private final RestTemplate restTemplate = new RestTemplate();

    public MovieService(Movie movie) {
        this.movie = movie;
    }

    //movie_id => movieId

    public Movie getMovieFromApiId(int apiId) {
        String url = API_BASE_URL + apiId + "?api_key=" + API_KEY;
        Movie m = restTemplate.getForObject(url, Movie.class);
////        Change id to ApiMovieId
//            m.setApiMovieId(m.getMovieId());
//            m.setMovieId(null);
////        }
        return m;

    }

    public Movie[] searchMoviesFromApi(String searchInput) {
        String url = "https://api.themoviedb.org/3/search/movie?query=" + searchInput + "&include_adult=false&language=en-US&page=1?api_key=" + API_KEY;
        Movie[] movies = restTemplate.getForObject(url, Movie[].class);
//        for(Movie movie : movies) {
//            movie.setApiMovieId(movie.getMovieId());
//            movie.setMovieId(null);
//        }
        return movies;
    }


}
