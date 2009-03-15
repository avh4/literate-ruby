Given /^a program with .* \((.*)\)$/ do |example|
  @input_file = "./examples/#{example}.rb"
  File.exist?(@input_file).should be_true
end

When /^I execute the program$/ do
  @input_file.should_not be_nil
  @output = `ruby -I./lib "#{@input_file}"`
  $?.exitstatus.should == 0
end

Then /^I should see the expected output \((.*)\)$/ do |example|
  @output.should == `cat "./examples/#{example}.out"`
end
