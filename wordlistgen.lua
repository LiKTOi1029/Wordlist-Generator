function FileReader()
	local input = io.open("input.txt"); local alltext = input:read("*a")
	
end
repeat
	io.write("Type your desired input into \"input.txt\"\nCopy the output from \"output.txt\" and use it!\nType anything to start")
	local choice = io.read():gsub("\n","")
	if choice ~= "EXIT" then FileReader() end
until choice == "EXIT"