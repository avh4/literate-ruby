require 'literate_ruby'

Section "A simple greeting" do
=begin
Our task is to display a simple greeting.  First we will need to initialize the
program constants.  Then we will display the greeting.
=end
  S "Program constants"
  S "Display the greeting"
end

Section "Display the greeting" do
=begin
Ruby provides a simple method for printing a string to the screen.  We will use it here.
=end
  puts @greeting
end

Section "Program constants" do
=begin
Depending on the user's preferred language we may want to dislpay a different greeting.
However we currently only provide an English greeting.
=end
  @greeting = "Hello, world!"
end

execute "A simple greeting"