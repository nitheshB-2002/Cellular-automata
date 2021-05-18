int i=750;
int j=400;
int count=0;
String dir="up";
void setup(){
size(1500,1500);
background(255);
noStroke();
}
void draw(){
count+=1;
println(count);
int g=get(i,j);
fill(255,0,0,101);
ellipseMode(CORNER);
ellipse(i,j,10,10);
if(g==-1){
fill(0);
rect(i,j,10,10);
if (dir=="up"){
dir="right";
i+=10;
}
else if(dir=="down"){
dir="left";
i-=10;
}
else if(dir=="right"){
dir="down";
j+=10;
}
else{
dir="up";
j-=10;
}
fill(255,0,0);
ellipseMode(CORNER);
ellipse(i,j,10,10);
}
else{
fill(255);
rect(i,j,10,10);
if (dir=="up"){
dir="left";
i-=10;
}
else if(dir=="down"){
dir="right";
i+=10;
}
else if(dir=="right"){
dir="up";
j-=10;
}
else{
dir="down";
j+=10;
}
}
}
