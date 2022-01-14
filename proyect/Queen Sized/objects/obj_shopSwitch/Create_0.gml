//wave
t = 0;
inc = choose(3, -3); //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amp = 5; //pixels of peak oscillation
shift = 0;

image_speed = 0;
image_index = global.player = enemy.tito ? 1 : 2;

checked = false;
var _player = global.player = enemy.tito ? "tito " : "bondiola ";
text = _player + "IS CURRENTLY SELECTED!";