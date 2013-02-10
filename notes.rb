$:.unshift("lib")
require "help"
require "queue.rb"

-----------
o.foo(args)

same as 

o.send(:foo, args)
o.send("foo", args)

def process_command(command,options)
  method = "procees_#{command}"

  begin
  	send(method,options)
  rescue NoMethodError
  	error_message("no command")
  end
end

def process_command(command,options)
  method = "process_#{command}"

  if respond_to?(method)
  	send(method,options)
  else
  	error_message("no command")
  end
end