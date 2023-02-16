import hypermedia.net.*;

UDP udp;
int port = 1111;

void setup() {
  size(640, 480);
  
  udp = new UDP( this, 1111);
  udp.listen(true);
}

void draw() {
 
}

void keyPressed() {
     String message  = str( key ); 
udp.send(message, "localhost", 1111); //getbytes es inecesario y va a tirar cualquier cosa
     }

void receive( byte[] data, String ip, int port ) {
  String message = new String(data);
  print( /* "[usuario] */message);
}
