require 'literate_ruby'

Section "A simple greeting" do
  S "Program constants"
  puts @greeting
end

Section "Program constants" do
  @greeting = "Hello, world!"
end

execute "A simple greeting"