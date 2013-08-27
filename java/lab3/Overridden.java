/*
 * Copyright (C) 2003-2013 eXo Platform SAS.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package lab3;

/**
 * Created by The eXo Platform SAS
 * Author : eXoPlatform
 *          exo@exoplatform.com
 * Aug 23, 2013  
 */
public class Overridden {

  public static void main(String args[]){

     Animal b = new Dog(); // Animal reference but Dog object
     b.move(); //Runs the method in Dog class
     try {
      b.see();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }

  }


}

class Animal{

  public void move(){
     System.out.println("Animals can move");
  }
  public void see() throws Exception{
    System.out.println("Animals can see");
 }
  
  public void waveEar(){
    System.out.println("Animals can wave ears");
 }
  
 protected void eat(){
   System.out.println("Animals can wave eat");
 }
  void think(){
   System.out.println("Animals can wave think");
 }
  
  void sleep(){
    System.out.println("Animals can wave think");
  }
  
}

class Dog extends Animal{

  public void move(){
     super.move(); // invokes the super class method
     System.out.println("Dogs can walk and run");
  }
  
  public void see(){
    System.out.println("Dogs can see");
 }
  
  public void waveEar(){
    System.out.println("Dogs can wave ears");
 }
  
  public void eat(){
    System.out.println("Dogs can eat public");
 }
  
  public void think(){
    System.out.println("Dogs can think public");
 }
  
  protected void sleep(){
    System.out.println("Dogs can sleep protected");
    
  }
}


