function FileReader()
	local input = io.open("input.txt"); local AllText, SavedText, ParsingText, Len = input:read("*a"), {}, "", AllText:len()
	for num1 = 1, Len, 1 do
		if AllText:sub(num1,num1) == AllText:sub(Len,Len) or AllText:sub(num1,num1) == " " then
			table.insert(SavedText, ParsingText)
			ParsingText = ""
		else
			ParsingText = ParsingText..AllText:sub(num1,num1)
		end
	end
end
repeat
	io.write("Type your desired input into \"input.txt\"\nCopy the output from \"output.txt\" and use it!\nType anything to start")
	local choice = io.read():gsub("\n","")
	if choice ~= "EXIT" then FileReader() end
until choice == "EXIT"