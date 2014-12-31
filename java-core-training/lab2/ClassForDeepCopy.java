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
package lab2;

/**
 * Created by The eXo Platform SAS
 * Author : eXoPlatform
 *          exo@exoplatform.com
 * Aug 16, 2013  
 */
public class ClassForDeepCopy implements Cloneable {
 
  int a ;
  String b ;
  Subclass sb  ;
  
  public ClassForDeepCopy(int a, String b, Subclass sb){
    this.a = a;
    this.b = b;
    
    this.sb = sb ;
    
  }
  
  public String toString() {
    return " a " +a + " b " + b +" hascode " + sb.hashCode();
  }
  
  public static void main(String[] args) {
    
     ClassForDeepCopy cdf = new ClassForDeepCopy(1, "hello", new Subclass(10, 100)) ;
     
     try {
      ClassForDeepCopy cdf2 = (ClassForDeepCopy)cdf.clone();
      
      System.out.println(cdf.toString());
      System.out.println(cdf2.toString());
      cdf2.sb.setNew(100, 100);
      
      System.out.println(cdf.toString());
      
      System.out.println(cdf.sb == cdf2.sb);
      System.out.println(cdf.sb.equals(cdf2.sb));
      
      System.out.println(" c " +cdf.sb.c +" d "+  cdf.sb.d);
      
      System.out.println(" c " +cdf2.sb.c +" d "+  cdf2.sb.d);
      
    } catch (CloneNotSupportedException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
     
    
     
     
     
    
  }
}
