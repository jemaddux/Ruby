###Yaml

require 'yaml'

test_array = ['Give Quiche A Chance','Mutants Out!', 'Chameleonic Life-Forms, No Thanks.']
test_string = test_array.to_yaml

filename = 'yamltestingfile.txt'
File.open filename, 'w' do |f|
f.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string
puts read_string
puts test_string
puts ""
puts read_array
puts test_array
puts ""
puts ""

def yaml_save (object, filename)
	File.open filename, 'w' do |f|
	f.write(object.to_yaml)
	end
end

def yaml_load(filename)
	yaml_string2 = File.read(filename)
	YAML::load yaml_string2
end

test_array2 = ['Slick Shoes', 'Bully Blinders', 'Pinchers of Peril']
filename2 = "yamltestingfile2.txt"
yaml_save(test_array2, filename2)
read_array2 = yaml_load(filename2)
puts read_array2
puts test_array2
