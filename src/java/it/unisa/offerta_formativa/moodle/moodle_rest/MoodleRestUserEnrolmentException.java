/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package it.unisa.offerta_formativa.moodle.moodle_rest;

/**
 *
 * @author root
 */
public class MoodleRestUserEnrolmentException extends Exception {
  
  public static final String USER_NULL="User cannot be null";

  public MoodleRestUserEnrolmentException(Throwable cause) {
    super(cause);
  }

  public MoodleRestUserEnrolmentException(String message, Throwable cause) {
    super(message, cause);
  }

  public MoodleRestUserEnrolmentException(String message) {
    super(message);
  }

  public MoodleRestUserEnrolmentException() {
  }
  
  
}
