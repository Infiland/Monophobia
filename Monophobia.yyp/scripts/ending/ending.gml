function loadending(){
if file_exists("ending.ini") {
ini_open("ending.ini")
for(var i =1;i<=7;i++) {
global.endingnum[i] = ini_read_real("ending", string(i), 0);
}
ini_close();
}
}

function saveending(){
ini_open("ending.ini")
for(var i =1;i<=7;i++) {
ini_write_real("ending", string(i), global.endingnum[i] );
}
ini_close()
}