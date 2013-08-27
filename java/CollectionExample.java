import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

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
    Collection<String> c = Arrays.asList(new String[]{"Test1"}) ;
    try {
      c.add("Test2") ;
    } catch (Exception e) {
      System.out.println("Khong chay " + e.getClass());
    }
    
    c = Arrays.asList("Test 1", "Test 2") ;
    System.out.println(" class " +  c.getClass());
    try {
      c.add("Test 3") ;
    } catch (Exception e) {
      System.out.println("Khong chay " + e.getClass());
    }
   
    c = new ArrayList<String>(Arrays.asList(new String[]{"Test1"})) ;
    Collections.addAll(c, "String");
    System.out.println(" class " +  c.getClass());
    c.add("Test2") ;
    System.out.println("Chay lun");
  }
}
