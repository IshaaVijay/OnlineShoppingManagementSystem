package com.Exceptions;

public class OutOfStockException extends RuntimeException{
  public OutOfStockException(String s) {
	  System.out.println(s);
  }
}
