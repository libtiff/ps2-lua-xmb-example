-- images used for navigation/menuicons
pic1=Image.load("Img/1.png")
pic2=Image.load("Img/2.png")
pic3=Image.load("Img/3.png")
pic4=Image.load("Img/4.png")
pic5=Image.load("Img/5.png")
pic6=Image.load("Img/6.png")
pic7=Image.load("Img/7.png")
pic8=Image.load("Img/8.png")

--menu

--Start/End Point Index
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
