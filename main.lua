-- images used for navigation/menuicons
pic1=Image.load("Theme/1.png")
pic2=Image.load("Theme/2.png")
pic3=Image.load("Theme/3.png")
pic4=Image.load("Theme/4.png")
pic5=Image.load("Theme/5.png")
pic6=Image.load("Theme/6.png")
pic7=Image.load("Theme/7.png")
pic8=Image.load("Theme/8.png")

--menu
selected=1
maxselected=8

while true do
	pad=Controls.read()
	--How Controls react on left/right
	if pad:right() and oldpad:right() ~= pad:right() then
		selected = selected+1
	end
	if pad:left() and oldpad:left() ~= pad:left() then
		selected = selected-1
	end
	if selected > maxselected then
		selected=1
	elseif selected <=0 then
		selected=maxselected
	end
	if selected==1 then
		screen:clear()
		screen:blit(0,0,pic1)
	end
	if selected==2 then
		screen:clear()
		screen:blit(0,0,pic2)
	end
	if selected==3 then
		screen:clear()
		screen:blit(0,0,pic3)
	end
	if selected==4 then
		screen:clear()
		screen:blit(0,0,pic4)
	end
	if selected==5 then
		screen:clear()
		screen:blit(0,0,pic5)
	end
	if selected==6 then
		screen:clear()
		screen:blit(0,0,pic6)
	end
	if selected==7 then
		screen:clear()
		screen:blit(0,0,pic7)
	end
	if selected==8 then
		screen:clear()
		screen:blit(0,0,pic8)
	end
	--Actions for each icon selection
	if pad:cross() and oldpad:cross() ~= pad:cross() and selected==1 then
		dofile("Enter Here your next lua file")
	end
	if pad:cross() and oldpad:cross() ~= pad:cross() and selected==2 then
		dofile("Enter Here your next lua file")
	end
	if pad:cross() and oldpad:cross() ~= pad:cross() and selected==3 then
		dofile("Enter Here your next lua file")
	end
	if pad:cross() and oldpad:cross() ~= pad:cross() and selected==4 then
		dofile("Enter Here your next lua file")
	end
	if pad:cross() and oldpad:cross() ~= pad:cross() and selected==5 then
		dofile("Enter Here your next lua file")
	end
	if pad:cross() and oldpad:cross() ~= pad:cross() and selected==6 then
		dofile("Enter Here your next lua file")
	end
	if pad:cross() and oldpad:cross() ~= pad:cross() and selected==7 then
		dofile("Enter Here your next lua file")
	end
	if pad:cross() and oldpad:cross() ~= pad:cross() and selected==8 then
		dofile("Enter Here your next lua file")
	end
	screen.flip()
	screen.waitVblankStart()
	oldpad = pad
end
