package org.quickfix.field; 
import org.quickfix.CharField; 
import java.util.Date; 

public class PreallocMethod extends CharField 
{ 
  public static final int FIELD = 591; 

  public PreallocMethod() 
  { 
    super(591);
  } 
  public PreallocMethod(char data) 
  { 
    super(591, data);
  } 
} 
