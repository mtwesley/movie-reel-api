# The Movie Reel API

## Overview
Movie Reel API is a Java Spring Boot application that serves as the backend for the Movie Reel web application. It handles user authentication, movie management, genre categorization, and user-specific movie lists.

## Features
- **Authentication**: Supports user login and registration, issuing JWTs for session management.
- **Movie Management**: Admins can create, update, and delete movies.
- **Genre Management**: Retrieve genres or associate them with movies.
- **User Lists**: Admins can create and manage custom movie lists.
- **Reviews**: Users can add and retrieve movie reviews.

## Technologies
- **Spring Boot** for rapid application development.
- **Spring Security** for authentication and access control.
- **JWT (JSON Web Tokens)** for secure transmission of user sessions.
- **Spring Data JDBC** for database interactions.
- **PostgreSQL** as the relational database.
- **Maven** for project management and build automation.
- **Java 11** for development and runtime environment.

## API Endpoints
### Authentication
- `POST /login`: Authenticates a user and returns a JWT.
- `POST /register`: Registers a new user account.

### Movies
- `POST /movie_info`: Creates a new movie (Admin only).
- `GET /movie_info/{id}`: Retrieves movie details by ID.
- `DELETE /movie_info/{movieId}`: Deletes a movie by ID (Admin only).

### Genres
- `GET /genre`: Lists all genres.
- `GET /genre/{id}`: Retrieves a genre by ID.

### Movie Lists
- `POST /lists`: Creates a new movie list (Admin only).
- `GET /lists`: Retrieves lists by name.
- `GET /lists/{id}`: Retrieves a specific list by ID.

### Reviews
- `GET /movies/reviews`: Retrieves reviews for a movie.
- `POST /movies/reviews`: Submits a new review (Authenticated users only).

## Getting Started
1. Clone the repository.
2. Run the database setup script.
3. Build with Maven: `mvn clean install`.
4. Start the server: `java -jar target/movie-reel-api.jar`.

## Security
Implements Spring Security for robust authentication and authorization.

## Contributing
Contributions are welcome. Please fork the repository and submit pull requests with your changes.

## License
This project is licensed under standard open source licenses.

