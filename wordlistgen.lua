function FileReader()
	local input = io.open("input.txt"); local AllText, SavedText, ParsingText = input:read("*a"), {}, ""; local Len = AllText:len()
	for num1 = 1, Len, 1 do
		if AllText:sub(num1,num1) == AllText:sub(Len,Len) then
			ParsingText = ParsingText..AllText:sub(num1,num1)
			table.insert(SavedText,ParsingText)
			ParsingText = ""
		elseif AllText:sub(num1,num1) == AllText:sub(Len,Len) or AllText:sub(num1,num1) == " " then
			table.insert(SavedText, ParsingText)
			ParsingText = ""
		else
			ParsingText = ParsingText..AllText:sub(num1,num1)
		end
	end
	print("the full text is "..table.concat(SavedText))
end
repeat
	io.write("Type your desired input into \"input.txt\"\nCopy the output from \"output.txt\" and use it!\nType anything to start\n")
	local choice = io.read():gsub("\n","")
	if choice:upper() ~= "EXIT" then FileReader() end
until choice:upper() == "EXIT"