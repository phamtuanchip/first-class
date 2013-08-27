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
 * Aug 23, 2013  
 */
public class Ocjpexam {

  void Question164(char[] answers){
    String str = "null";
    if (str == null) {
      System.out.println("null");
    //origin: } else (str.length() == 0) {  
    } else if (str.length() == 0) {
      System.out.println("zero");
    } else {
      System.out.println("some");
    }

  }

  public static void main(String[] args){

  }

}
