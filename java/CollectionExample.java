import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

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

/**
 * Created by The eXo Platform SAS
 * Author : eXoPlatform
 *          exo@exoplatform.com
 * Aug 27, 2013  
 */
public class CollectionExample {

  public static void main(String[] args) {
    //Fixed size array
    String[] arr = new String[]{"Test1"} ;
    List<String> c = Arrays.asList(arr) ;
    
    try {
      c.add("Test2") ;
    } catch (Exception e) {
      System.out.println("Khong chay " + e.getClass());
    }
    c.set(0, "test2");
    System.out.println(" goc  " +  arr[0].toString());
    System.out.println(" moi " + c.toString());
    
    c = Arrays.asList("Test 1", "Test 2") ;
    System.out.println(" class " +  c.getClass());
    try {
      c.add("Test 3") ;
    } catch (Exception e) {
      System.out.println("Khong chay " + e.getClass());
    }
  
    c = new ArrayList<String>(Arrays.asList(arr)) ;
    Collections.addAll(c, "String");
    c.add("Test2") ;
    System.out.println(" goc  " +  arr.toString());
    System.out.println(" moi " + c.toString());
  }
}
