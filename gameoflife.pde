boolean keypressed;
int[][] screen=new int[100][100];
void setup() {
  size(1000, 1000);
  background(255);

} 

void draw() {
noStroke();
if(keyPressed==true || keypressed==true ){
keypressed=true;
//remaining code must come here

for(int i=0;i<100;i++){
  for(int j=0;j<100;j++){
  int[] mat={get((i+1)*10,j*10),get((i+1)*10,(j+1)*10),get(i*10,(j+1)*10),get((i-1)*10,(j+1)*10),get((i-1)*10,j*10),get((i-1)*10,(j-1)*10),get(i*10,(j-1)*10),get((i+1)*10,(j-1)*10)};
 
 int sum = 0;
  for (int t =0; t<mat.length; t++) {
    sum +=mat[t];
   
  }
  if(sum<-8){
    println(sum);
  println(floor(sum/(-16777216)));
  printArray(mat);
  }
 
  if(((get(i*10,j*10)==-16777216) && (floor(sum/(-16777216))==2)) || (floor(sum/(-16777216))==3)){
  screen[i][j]=0;
  //println(i);
  //println(j);
  }
  else{
  screen[i][j]=255;  
  }
  }
}
for(int i=0;i<100;i++){
  for(int j=0;j<100;j++){
  fill(screen[i][j]);
  if(screen[i][j]==0){println(1);}
  rect(i*10,j*10,10,10);
  }}
delay(750);
}
else{
//code part for setting the seed
if(mousePressed==true){
if(get(mouseX,mouseY)==-1){
  fill(0);}
else{
fill(255);
}
rect(floor(mouseX/10)*10,floor(mouseY/10)*10,10,10);
}
}
}
