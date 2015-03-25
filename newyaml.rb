$filename = ["testing.txt",0]
require 'yaml'

class Super
def savegame
	$savefile1 = [0,0,0,0,0]
	$savefile2 = [1,1,1,1,1]
	$savefilePrime = [$savefile1.to_s,$savefile2.to_s]
	File.open $filename[0], 'w' do |f|
	f.write($savefilePrime.to_yaml)
	end
end
	

def loadgame
	tempfile = File.read($filename[0])
	temparray = YAML::load tempfile
	puts temparray
	puts ""
	$prime = [0,0]
	#puts $prime
	$prime[0] = eval(temparray[0])
	$prime[1] = eval(temparray[1])
	puts $prime[0]
	puts "**********"
	puts $prime[1]
end

def blank
	$savefile = [$copper,0].to_a + $wood + $meat + $fish + $wheat + $bread
	
	$wood = [0,0,0]
	$meat = [0,0,0]
	$fish = [0,0,0]
	$wheat = [0,0,0]
	$bread = [0,0,0]
	$copper = temparray[0]
	x = temparray[1]
	$wood[0] = temparray[2]
	$wood[1] = temparray[3]
	$wood[2] = temparray[4]
	$wood[3] = temparray[5]
	$meat[0] = temparray[6]
	$meat[1] = temparray[7]
	$meat[2] = temparray[8]
	$meat[3] = temparray[9]
	$fish[0] = temparray[10]
	$fish[1] = temparray[11]
	$fish[2] = temparray[12]
	$fish[3] = temparray[13]
	$wheat[0] = temparray[14]
	$wheat[1] = temparray[15]
	$wheat[2] = temparray[16]
	$wheat[3] = temparray[17]
	$bread[0] = temparray[18]
	$bread[1] = temparray[19]
	$bread[2] = temparray[20]
	$bread[3] = temparray[21]
end
end

$silly = Super.new
$silly.savegame
$silly.loadgame