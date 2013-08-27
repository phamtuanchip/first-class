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
package lab1;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * Created by The eXo Platform SAS
 * Author : eXoPlatform
 *          exo@exoplatform.com
 * Aug 26, 2013  
 */
public class Drive extends Base{

  void sayHello(){
    System.out.println("Drive hello");
  }
  
  public static void main(String[] args) {
    
    Base d = new Drive() ;
    
    d.sayHello() ;
    
    ((Base)d).sayHello();
    
   try {
    Method[] m = Class.forName(d.getClass().getSuperclass().getCanonicalName()).getMethods() ;
     for(Method mt : m){
       System.out.println(mt.toString());
     }
  } catch (SecurityException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
  } catch (IllegalArgumentException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
  } catch (ClassNotFoundException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
  } ; 
  }
}
