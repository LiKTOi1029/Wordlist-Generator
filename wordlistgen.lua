function FileReader()
	local input = io.open("input.txt"); local AllText, SavedText, ParsingText = input:read("*a"), {}, ""
		for num1 = 1, AllText:len(), 1 do
			
		end
	end
repeat
	io.write("Type your desired input into \"input.txt\"\nCopy the output from \"output.txt\" and use it!\nType anything to start")
	local choice = io.read():gsub("\n","")
	if choice ~= "EXIT" then FileReader() end
until choice == "EXIT"