$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module LiterateRuby
  VERSION = '0.0.1'
end

@code = {}

def Section(title)
  @code[title] = lambda { yield }
end

def S(section)
  @code[section].call
end

def execute(section)
  @code[section].call
end