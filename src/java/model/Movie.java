package model;

/**
 *
 * @author Grupo 05
 */
public class Movie {
    private int id;
    private String name;
    private String year;
    private String genres;
    private String languages;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getYear() {
        return year;
    }

    public String getGenres() {
        return genres;
    }

    public String getLanguages() {
        return languages;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public void setGenres(String genres) {
        this.genres = genres;
    }

    public void setLanguages(String languages) {
        this.languages = languages;
    }
    
}
