package _01_intro_to_static;
public class Athlete {

     static int nextBibNumber;
     static String raceLocation = "New York";
     static String raceStartTime = "9.00am";

     String name;
     int speed;
     int bibNumber;
 
Athlete (String name, int speed){
     this.name = name;
     this.speed = speed;
     this.bibNumber = nextBibNumber;
     nextBibNumber +=1;
}     
String getName() {
		return name;
	}

	int getSpeed() {
		return speed;
	}

	void setName() {
		this.name = name;

	}

	void setSpeed() {
		this.speed = speed;
	}   
	
	void setRaceLocation() {
		this.raceLocation = raceLocation;
	
	}
	void raceStartTime() {
		this.raceStartTime = raceStartTime;
	}
	void getBibNumber() {
		this.bibNumber = bibNumber;
		
	}
public static void main(String[] args) {
	Athlete john = new Athlete("john",30);
	Athlete bob  = new Athlete("bob", 999999999);
	System.out.println(john.name);
	System.out.println(john.bibNumber);
	System.out.println(john.raceLocation);
	System.out.println(bob.name);
	System.out.println(bob.bibNumber);
	System.out.println(bob.raceLocation);
}
}



