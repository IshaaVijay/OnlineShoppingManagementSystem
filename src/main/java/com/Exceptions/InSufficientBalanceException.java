package com.Exceptions;

public class InSufficientBalanceException extends RuntimeException{
  public InSufficientBalanceException(String s) {
	  System.out.println(s);
  }
}
