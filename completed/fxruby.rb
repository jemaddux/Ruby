require 'fox16'
include Fox
theApp = FXApp.new
theMainWindow = FXMainWindow.new(theApp, "Hello World")
theButton = FXButton.new(theMainWindow, "Hello, World!")
theButton.tipText = "Push Me!"
iconFile = File.open("ruby2.jpg", "rb")
theButton.icon = FXJPGIcon.new(theApp, iconFile.read)
iconFile.close
theButton.iconPosition = ICON_ABOVE_TEXT
theButton.connect(SEL_COMMAND) { exit }
FXToolTip.new(theApp)



theApp.create
theMainWindow.show
theApp.run