package _05_netflix;

public class Netflix {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Movie niceNathan = new Movie("NiceNathan",4);
		Movie johnMan = new Movie("Johnman",1);
		Movie mikeMob = new Movie("MikeMob",2);
		Movie annieAcro = new Movie("annieAcro",1);
		Movie apatheticAnis = new Movie("apatheticAnis",3);
		System.out.println(niceNathan.getTicketPrice());
		NetflixQueue queue = new NetflixQueue();
		queue.addMovie(apatheticAnis);
		queue.addMovie(niceNathan);
		queue.addMovie(johnMan);
		queue.addMovie(annieAcro);
		queue.addMovie(mikeMob);
		queue.printMovies();
		System.out.println(queue.getBestMovie().getTitle());
		queue.sortMoviesByRating();
		System.out.println(queue.getMovie(1));
	}  

}
