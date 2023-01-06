//wave
t = 0;
inc = choose(3, -3); //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amp = 5; //pixels of peak oscillation
shift = 0;

image_speed = 0;
image_index = 5;

cost = 5 + (2*global.mult);
checked = false;
text = "REROLL INTO THE COOKIE POOL!"