Given /^a program with only code \(example1\)$/ do
  @input_file = "./examples/example1.rb"
  File.exist?(@input_file).should be_true
end

When /^I execute the program$/ do
  @output = `ruby -I./lib "#{@input_file}"`
  $?.exitstatus.should == 0
end

Then /^I should see the expected output \(example1\)$/ do
  @output.should == `cat ./examples/example1.out`
end
