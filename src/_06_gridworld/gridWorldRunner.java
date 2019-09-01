package _06_gridworld;

import java.awt.Color;


import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class gridWorldRunner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
       World world = new World();
       Bug bug = new Bug();
       Bug bug2 = new Bug();
       Flower flower = new Flower();
       Flower flower2 = new Flower();
       Location location = new Location(3,4);
       
       Location location2 = world.getRandomEmptyLocation();
       Location left = location2.getAdjacentLocation(270);
       Location right = location2.getAdjacentLocation(90);
	  world.show();
	   world.add(left, flower);
	   world.add(right, flower2);
       world.add(location,bug);
       world.add(location2,bug2);
       bug2.setColor(Color.BLUE);
       bug2.setDirection(90);
      for (int i = 0; i < world.getGrid().getNumCols()-1; i++) {
		for (int j = 0; j <world.getGrid().getNumRows()-1 ; j++) {
		Location current = new Location(i,j);
		world.add(current, new Flower());
		}
	}
	}  

}
