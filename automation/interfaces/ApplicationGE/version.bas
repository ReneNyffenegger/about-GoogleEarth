'
'   c:\lib\runVBAFilesInOffice\runVBAFilesInOffice.vbs -excel -ge version -c main
'

sub main()

  dim ge as EARTHlib.applicationGE
  
  set ge = new EARTHlib.applicationGE

  while ge.isInitialized = 0: doEvents: wend

  call msgBox("Version: " & ge.versionMajor & "." & ge.versionMinor & chr(10) & "Build: " & ge.versionBuild)
    
  activeWorkbook.saved = true

end sub
