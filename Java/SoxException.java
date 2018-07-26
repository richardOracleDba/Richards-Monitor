/*
 * SoxException.java        14.03 14/12/06
 *
 * Copyright (c) 2003 - 2010 Richard Wright
 * 5 Hollis Wood Drive, Wrecclesham, Farnham, Surrey.  GU10 4JT
 * All rights reserved.
 *
 * RichMon is a lightweight database monitoring tool.  
 * 
 * Keep up to date with the latest developement at http://richmon.blogspot.com
 * 
 * Report bugs and request new features by email to support@richmon4oracle.com
 * 
 * Change History
 * ==============
 */
 
 package RichMon;

/**
 * Insane Snapshot Range
 */
public class SoxException extends Exception {
  public SoxException() {
    super();
  }

  public SoxException(String msg) {
    super(msg);
  }
}
