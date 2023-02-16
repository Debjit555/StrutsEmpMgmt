/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.utils;



/**
 *
 * @author hp
 */
  
  
import java.io.*;  
import java.sql.SQLException;  

  
import org.apache.log4j.Logger;

public class TestClass{  
  
   /* Get the class name to be printed on */  
    static Logger log = Logger.getLogger(TestClass.class.getName());  
     
   public static void main(String[] args)throws IOException,SQLException{  
      log.debug("Hello this is a debug message");  
      log.info("Hello this is an info message");  
}  
}