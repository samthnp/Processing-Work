player p;
firstEnemy firstE1;
firstEnemy firstE2;


void setup ()

{
    size(400,400);
    p = new player();
    firstE1 = new firstEnemy(50,10);
    firstE2 = new firstEnemy(25,5);
    noCursor();
}

void draw()
{
    background(0);
    p.drawPlayer();
}
