Configuration AnthonyBaseline 
{
  import-dscresource -name service, log
  
  Node localhost
  { 
    Service W32Time 
    { 
      Name = "W32Time" 
      State = "Running" 
      StartupType = "Automatic" 
    }

    log ModuleLog 
    { 
      Message = "This is a log entry for the module log."
      
    }
  } 
}
