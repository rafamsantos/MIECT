package Ex2;

public class Movie {
    private String name;
    private double score;
    private String rating;
    private String genre;
    private int runningTime;

    public Movie(String name , double score , String rating , String genre , int runningTime){
        this.name = name;
        this.score = score;
        this.rating = rating;
        this.genre = genre;
        this.runningTime = runningTime;
    }

    public String getName(){return this.name;}
    public double getScore(){return this.score;}
    public String getRating(){return this.rating;}
    public String getGenre(){return this.genre;}
    public int getRunningTime(){return this.runningTime;}
    
}
