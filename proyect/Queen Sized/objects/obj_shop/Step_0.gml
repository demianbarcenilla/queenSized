//Draw text
if(global.shoplift)
{
	global.text = "STEALING TIME! HEEHEE"
};
else if(global.preserve)
{
	global.text = "CLICK THE SKILL YOU WANT TO KEEP!"
};
else if(canChangeText = 0)
{
	global.text = global.textPrev;
};