$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module LiterateRuby
  VERSION = '0.0.1'
end

def Section(title)
  @code = lambda { yield }
end

def execute(section)
  @code.call
end