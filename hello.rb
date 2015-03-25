require 'greeter'

#Default is "World"
name = ARGV.first || "World"

greeter = Greeter.new(name)
greeter.greet