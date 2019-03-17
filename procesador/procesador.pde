int numero1, numero2, numero3, numero4, numero5;
int timer;
char []keyP = {'1','2','3'};
boolean key = false;
int bin;
int move1=160;
int c2=12,c=12;



void setup(){
  noLoop();
  fullScreen();
  background(255);
}

void draw(){
  //Pantalla inicial
  if(!key){
    home();
    textSize(12);
  } else {
    background(255);
    operacion1(); 
  }
}

void home(){
  textSize(50);
  fill(0);
  text("Presiona 1 para realizar ((8^3)+24)-(250+36)", (width/2)-540, (height/2)-300);
  text("Presiona 2 para realizar ((00011000 AND 00111110) OR !(11001101)", (width/2)-850, (height/2));
  text("Presiona 3 para realizar [((11^2)+135)/3]+21", (width/2)-540, (height/2)+300);
}

void keyTyped(){
  for(int i=0;i<keyP.length;i++){
      if(keyP[i] == '1'){
        println("Operación 1 seleccionada: ((8^3)+24)-(250+36)");
        operacion1();
        key = true;
        redraw();
    } /*else if(keyP[i] == '2'){
        println("Operación 2 seleccionada: ((8^3)+24)-(250+36)");
        operacion1();
    } else if(keyP[i] == '3'){
        println("Operación 3 seleccionada: ((8^3)+24)-(250+36)");
        operacion1();
    }*/
  }
}

void operacion1(){
  int a=(width/2)+410;
  int d=(width/2)+489;
  int b9=(height/2)-343,b8=(height/2)-343,b7=(height/2)-145,b6=(height/2)-170,
      b5=(height/2)-196,b4=(height/2)-445, b3=(height/2)-381 ,b2=(height/2)-13,
      b=(height/2)-13;
  
  memoria();
  decodificador();
  contador();
  registro_Instru();
  registro_Dir();
  registro_Datos();
  acumulador();
  registro_Entrada();
  stroke(#58D68D);
  lineasAletosas();
  lineasAletosas2();
  lineasAletosas3();
  stroke(#3498DB);
  lineasAletosas4();
  lineasAletosas5();
  lineasAletosas6();
  lineasAletosas7();
  stroke(#8E44AD);
  lineasAletosas8();
  stroke(#E74C3C);
  lineasAletosas9();
  stroke(#58D68D);
  lineasAletosas10();
  lineasAletosas11();
  stroke(#3498DB);
  lineasAletosas12();
  stroke(#3498DB);
  lineasAletosas13();
  lineasAletosas14();
  lineasAletosas15();
  stroke(0);
  noFill();

  fill(0);
  //Registro de entrada
  for (int i=0;i<16;i++){
    text("0000000000000000", (width/2)+307, b9+=c);
  }
  //Acumulador
  for (int i=0;i<16;i++){
    text("0000000000000000", (width/2)+77, b8+=c);
  }
  //Registro de datos
  for (int i=0;i<32;i++){
    text("0000000000000000", (width/2)-173, b7+=c);
  }
  //Registro de Direcciones
  for (int i=0;i<32;i++){
    text("00000000", (width/2)-584, b6+=c);
  }
  //Registro de instrucciones
  for (int i=0;i<12;i++){
    text("00000000", (width/2)-323, b5+=c);
  }
  //contador
  for (int i=0;i<16;i++){
    String pos = binary(i,8);
    text(pos, (width/2)-363, b4+=c);
  }
  //decodificador
  for (int i=0;i<8;i++){
    String pos = binary(i,8);
    text(pos, (width/2)-618, b3+=c);
  }
  //memoria
  for (int i=0;i<32;i++){
    String pos = binary(i,8);
    text(pos, a, b+=c);
    if(i==0){
      text("0000000000010000",d,b2+=c2);
    } else if(i==1){
      text("0000001100010001",d,b2+=c2);
    } else if(i==2){
      text("0000000000010010",d,b2+=c2);
    } else if(i==3){
      text("0000011000010110",d,b2+=c2);
    } else if(i==4){
      text("0000001000010011",d,b2+=c2);
    } else if(i==5){
      text("0000000000010100",d,b2+=c2);
    } else if(i==6){
      text("0000000000010101",d,b2+=c2);
    } else if(i==7){
      text("0000011000010111",d,b2+=c2);
    } else if(i==8){
      text("0000001000010011",d,b2+=c2);
    } else if(i==9){
      text("0000000000010110",d,b2+=c2);
    } else if(i==10){
      text("0000000100010111",d,b2+=c2);
    } else if(i==11){
      text("0000011000011000",d,b2+=c2);
    } else if(i==12){
      text("0000011100000000",d,b2+=c2);
    } else if(i==16){
      text("0000000000001000",d,b2+=c2);
    } else if(i==17){
      text("0000000000000011",d,b2+=c2);
    } else if(i==18){
      text("0000000000011000",d,b2+=c2);
    } else if(i==19){
      text("0000000000000000",d,b2+=c2);
    } else if(i==20){
      text("0000000011111010",d,b2+=c2);
    } else if(i==21){
      text("0000000000100100",d,b2+=c2);
    } else{
      text("",d+move1,b2+=c2);
    }
  }
  
  numero1=8;
  numero2=3;
  numero3=24;
  numero4=250;
  numero5=36;
  
  
  for(int i=0;i<14;i++){   
    if(timer==0){
      
    }
  }
  double potencia = Math.pow(Double.parseDouble(numero1+""),Double.parseDouble(numero2+""));
  int parentesis1 = (int)potencia + numero3;
  int parentesis2 = numero4 + numero5;
  int resultado = parentesis1 - parentesis2;
  
  bin = Integer.parseInt(binary(resultado,8));
  println("El resultado es: "+resultado+" = "+bin);
  
  noFill();
  //000000000000000000000000000000000000000000000000
}

/*void operacion2(){
  
}

void operacion3(){
  numero1=11;
  numero2=2;
  numero3=135;
  numero4=3;
  numero5=21;
  
  
}*/

void memoria(){
  int x,y,w,h,r;
  int x1 = (width/2)+482;
  int x2 = (width/2)+482;
  int y1 = (height/2)-20;
  int y2 = (height/2)+380;
  x=(width/2)+400;
  y=(height/2)-20;
  w=222;
  h=400;
  r=20;
  fill(0);
  line(x1, y1, x2, y2);
  text("Memoria",x+85,y-5);
  noFill();
  rect(x, y, w, h, r);   
}

void decodificador(){
  int x,y,w,h,r;
  x=(width/2)-625;
  y=(height/2)-385;
  w=155;
  h=108;
  r=20;
  int x1=x+75;
  int y2=0;
  int posyl=y+15;
  fill(0);
  line(x1, y, x1, y2+h+y);
  line(x1+18, y, x1+18, y2+h+y);
  //simbolos
  text("+",x1+5,posyl);
  text("-",x1+5,posyl+c);
  text("*",x1+5,posyl+c*2);
  text("^",x1+5,posyl+c*3);
  text("&",x1+5,posyl+c*4);
  text("!",x1+5,posyl+c*5);
  text("M",x1+5,posyl+c*6);
  text("F",x1+5,posyl+c*7);
  //comentario
  text("Suma",x1+22,posyl);
  text("Resta",x1+22,posyl+c);
  text("Producto",x1+22,posyl+c*2);
  text("Potencia",x1+22,posyl+c*3);
  text("AND",x1+22,posyl+c*4);
  text("OR",x1+22,posyl+c*5);
  text("MEMORIA",x1+22,posyl+c*6);
  text("Finalizar",x1+22,posyl+c*7);
  //texto
  text("Decodificador",x+35,y-5);
  noFill();
  rect(x, y, w, h, r);
}

void contador(){
  int x,y,w,h,r;
  x=(width/2)-370;
  y=(height/2)-450;
  w=75;
  h=205;
  r=20;
  
  fill(0);
  //texto
  text("Contador",x+10,y-5);
  noFill();
  rect(x, y, w, h, r);
}

void registro_Instru(){
  int x,y,w,h,r;
  x=(width/2)-330;
  y=(height/2)-200;
  w=75;
  h=155;
  r=20;
  
  fill(0);
  //texto
  text("Registro de Instrucciones",x-30,y-5);
  noFill();
  rect(x, y, w, h, r);
}

void registro_Dir(){
  int x,y,w,h,r;
  x=(width/2)-591;
  y=(height/2)-177;
  w=75;
  h=500;
  r=20;
  
  fill(0);
  //texto
  text("Registro de Direcciones",x-25,y-5);
  noFill();
  rect(x, y, w, h, r);
}

void registro_Datos(){
  int x,y,w,h,r;
  x=(width/2)-180;
  y=(height/2)-150;
  w=137;
  h=500;
  r=20;
  
  fill(0);
  //texto
  text("Registro de Datos",x+17,y-5);
  noFill();
  rect(x, y, w, h, r);
}

void acumulador(){
  int x,y,w,h,r;
  x=(width/2)+70;
  y=(height/2)-350;
  w=137;
  h=250;
  r=20;
  
 fill(0);
  //texto
  text("Acumulador",x+30,y-5);
  noFill();
  rect(x, y, w, h, r);
}

void registro_Entrada(){
  int x,y,w,h,r;
  x=(width/2)+300;
  y=(height/2)-350;
  w=137;
  h=250;
  r=20;  
  fill(0);
  //texto
  text("Registro de entrada",x+12,y-5);
  noFill();
  rect(x, y, w, h, r);
}
//horizontal
void lineasAletosas(){
  int x1,y1,x2,y2;
  x1=(width/2)-370;
  y1=(height/2)-375;
  x2=(width/2)-420;
  y2=(height/2)-375;
  
  line(x1,y1,x2,y2);
  
}

//Vertical
void lineasAletosas2(){
  int x1,y1,x2,y2;
  x1=(width/2)-420;
  y1=(height/2)-375;
  x2=(width/2)-420;
  y2=(height/2)-50;
  line(x1,y1,x2,y2);
}
//horizontal
void lineasAletosas3(){
  int x1,y1,x2,y2;
  x1=(width/2)-420;
  y1=(height/2)-50;
  x2=(width/2)-515;
  y2=(height/2)-50;
  line(x1,y1,x2,y2);
}
//horizontal
void lineasAletosas4(){
  int x1,y1,x2,y2;
  x1=(width/2)-330;
  y1=(height/2)-185;
  x2=(width/2)-395;
  y2=(height/2)-185;
  
  line(x1,y1,x2,y2);
}
//Vertical
void lineasAletosas5(){
  int x1,y1,x2,y2;
  x1=(width/2)-395;
  y1=(height/2)-185;
  x2=(width/2)-395;
  y2=(height/2)-250;
  line(x1,y1,x2,y2);
}
//horizontal
void lineasAletosas6(){
  int x1,y1,x2,y2;
  x1=(width/2)-395;
  y1=(height/2)-250;
  x2=(width/2)-540;
  y2=(height/2)-250;
  line(x1,y1,x2,y2);
}
//vertical
void lineasAletosas7(){
  int x1,y1,x2,y2;
  x1=(width/2)-540;
  y1=(height/2)-250;
  x2=(width/2)-540;
  y2=(height/2)-277;
  line(x1,y1,x2,y2);
}

//horizontal
void lineasAletosas8(){
  int x1,y1,x2,y2;
  x1=(width/2)-180;
  y1=(height/2)-138;
  x2=(width/2)-255;
  y2=(height/2)-138;
  line(x1,y1,x2,y2);
}

//horizontal
void lineasAletosas9(){
  int x1,y1,x2,y2;
  x1=(width/2)-180;
  y1=(height/2)+100;
  x2=(width/2)-515;
  y2=(height/2)+100;
  line(x1,y1,x2,y2);
}

//vertical
void lineasAletosas10(){
  int x1,y1,x2,y2;
  x1=(width/2)-560;
  y1=(height/2)+323;
  x2=(width/2)-560;
  y2=(height/2)+380;
  line(x1,y1,x2,y2);
}
//sdadad
//horizontal
void lineasAletosas11(){
  int x1,y1,x2,y2;
  x1=(width/2)-560;
  y1=(height/2)+380;
  x2=(width/2)+410;
  y2=(height/2)+380;
  line(x1,y1,x2,y2);
  
}

//horizontal
void lineasAletosas12(){
  int x1,y1,x2,y2;
  x1=(width/2)+400;
  y1=(height/2)+200;
  x2=(width/2)-43;
  y2=(height/2)+200;
  line(x1,y1,x2,y2);
}

//horizontal
void lineasAletosas13(){
  int x1,y1,x2,y2;
  x1=(width/2)-43;
  y1=(height/2)-20;
  x2=(width/2)+380;
  y2=(height/2)-20;
  line(x1,y1,x2,y2);
}

//Vertical
void lineasAletosas14(){
  int x1,y1,x2,y2;
  x1=(width/2)+380;
  y1=(height/2)-20;
  x2=(width/2)+380;
  y2=(height/2)-100;
  line(x1,y1,x2,y2);
}

//Vertical
void lineasAletosas15(){
  int x1,y1,x2,y2;
  x1=(width/2)+133;
  y1=(height/2)-20;
  x2=(width/2)+133;
  y2=(height/2)-100;
  line(x1,y1,x2,y2);
}
