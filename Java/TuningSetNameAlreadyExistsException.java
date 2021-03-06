/*
 *  SQLTuningSetNameAlreadyExistsException.java        14.07 02/02/07
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
 */
 
 package RichMon;

/**
 * An attempt has been made to create a sql tuning set with a name that it already used.
 */
public class TuningSetNameAlreadyExistsException extends Exception {
  public TuningSetNameAlreadyExistsException() {
    super();
  }

  public TuningSetNameAlreadyExistsException(String msg) {
    super(msg);
  }
}
