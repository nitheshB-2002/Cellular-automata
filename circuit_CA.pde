//initialising an array to store states of each pixel 
int[][] screen = new int[50][50];
void setup(){//orange (226,179,25)
//setting up the window and giving a black background
size(500,500);
background(0);
//creating a wire
for(int i=0;i<50;i++){
fill(255,0,0);
rect(i*10,100,10,10);
if(i==5){
fill(255);
rect(i*10,100,10,10);
}
else if (i==4){
fill(0,0,255);
rect(i*10,100,10,10);
}
}
//creatng a forward biased diode
for(int i=0;i<50;i++){

if(i==5){
fill(255);
rect(i*10,250,10,10);
}
else if (i==4){
fill(0,0,255);
rect(i*10,250,10,10);
}
else if (i==10){
fill(255,0,0);
rect(i*10,240,10,10);
rect(i*10,250,10,10);
rect(i*10,260,10,10);
}
else if (i==11){
fill(255,0,0);
rect(i*10,240,10,10);
rect(i*10,260,10,10);
}
else{
fill(255,0,0);
rect(i*10,250,10,10);
}
}
//creating a reverse biased diode
for(int i=0;i<50;i++){

if(i==5){
fill(255);
rect(i*10,400,10,10);
println(get(i*10+5,400+5));
}
else if (i==4){
fill(0,0,255);
rect(i*10,400,10,10);
println("BLUE");//-16776961
println(get(i*10+5,400+5));
}
else if (i==10){
fill(255,0,0);
rect(i*10,390,10,10);

rect(i*10,410,10,10);
}
else if (i==11){
fill(255,0,0);
rect(i*10,390,10,10);//BLACK=-16777216
println("RED");//-65536
println(get(i*10+5,390+5));
rect(i*10,400,10,10);
rect(i*10,410,10,10);
}
else{
fill(255,0,0);
rect(i*10,400,10,10);
}
}
}
void draw(){
//initially traversing through each pixel and storing its state in screen array
for(int i=0;i<50;i++){
for(int j=0;j<50;j++){
delay(1);//to make it run slowly

 if (get(i*10+5,j*10+5)==-65536){
  int[] mat={get((i+1)*10+5,j*10+5),get((i+1)*10+5,(j+1)*10+5),get((i+1)*10+5,(j-1)*10+5),get(i*10+5,(j+1)*10+5),get(i*10+5,(j-1)*10+5),get((i-1)*10+5,(j+1)*10+5),get((i-1)*10+5,j*10+5),get((i-1)*10+5,(j-1)*10+5)};
  int nw=0;
  for(int k=0;k<mat.length;k++){
    if(mat[k]==-1){
      nw+=1;
    }}
  if(nw==1 || nw==2){
    screen[i][j]=255;}
  else{screen[i][j]=-16776961;}
 }
else if(get(i*10+5,j*10+5)==-1){
screen[i][j]=-1;
}
else if(get(i*10+5,j*10+5)==-16776961){
screen[i][j]=-16776961;
}
else if (get(i*10+5,j*10+5)==-16777216){
  screen[i][j]=0;
}}}
//chaning the state of each pixel using the transition ruleset of the cellular automata
for(int i=0;i<50;i++){
  for(int j=0;j<50;j++){
    if (screen[i][j]==-16776961){
      fill(255,0,0);
      rect(i*10,j*10,10,10);}
    else if (screen[i][j]==-1){
      fill(0,0,255);
      rect(i*10,j*10,10,10);}
    else if (screen[i][j]==0 || screen[i][j]==255){
      fill(screen[i][j]);
      rect(i*10,j*10,10,10);}
}}}
