/*
 * ToManySnapshotsException.java        14.01 18/08/06
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

public class CannotRemoveLastScratchPanelException extends Exception {
  public CannotRemoveLastScratchPanelException() {
    super();
  }

  public CannotRemoveLastScratchPanelException(String msg) {
    super(msg);
  }
}
