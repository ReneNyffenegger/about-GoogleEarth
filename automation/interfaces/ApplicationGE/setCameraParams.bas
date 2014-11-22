'
'   c:\lib\runVBAFilesInOffice\runVBAFilesInOffice.vbs -excel -ge setCameraParams -c main
'

sub main()

  dim ge as EARTHlib.applicationGE
  
  set ge = new EARTHlib.applicationGE
    
' Position Google Earth over lake Zurich, viewing in direction
' of the main station:

  ge.setCameraParams                                  _
    lat       := 47 + 21/60 + 42/60/60 + 49/60/60/60, _
    lon       :=  8 + 32/60 + 34/60/60 +  8/60/60/60, _
    alt       := 250,                                 _
    altMode   := 1,                                   _
    range     := 1,                                   _
    tilt      := 70,                                  _
    azimuth   := 360 - 15,                            _
    speed     := 5

end sub
