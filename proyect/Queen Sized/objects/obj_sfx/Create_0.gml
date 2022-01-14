image_speed = 0;
image_index = 1;

//wave
t = 0;
inc = choose(3, -3); //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amp = 5; //pixels of peak oscillation
shift = 0;

//corresponding text
text = "CHANGE THE VOLUME OF THE SOUND EFFECTS! CURRENT: "+string(global.sfxVol*100) + "PERCENT!";
selected = false;