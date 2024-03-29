/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package it.unisa.offerta_formativa.moodle.moodle_rest;

import java.io.Serializable;

/**
 *
 * @author root
 */
public enum MoodleUserKey implements Serializable {
  USERS("users"),
  CUSTOM_FIELDS("customfields"),
  ROLES("roles"),
  ENROLLED_COURSES("enrolledcourses"),
  GROUPS("groups"),
  PREFERENCES("preferences");
  
  private String value;
  
  private MoodleUserKey(String value) {
    this.value=value;
  }
  
  @Override
  public String toString() {
    return value;
  }
  
  public MoodleUserKey getEnum(String value) {
    for (MoodleUserKey key : MoodleUserKey.values()) {
      if (key.value.equals(value)) {
        return key;
      }
    }
    return null;
  }
}
