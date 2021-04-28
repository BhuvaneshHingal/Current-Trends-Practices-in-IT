#include<GL/gl.h>
#include<GL/glu.h>
#include<GL/glut.h>
// if all the colors are added: white
// if no colors are added: black.
void init()
{
    glClearColor(0.0f,0.0f,0.0f,0.0f); // [0-1]
    glColor3f(1,1,0);
    glPointSize(10.0f);
    glMatrixMode( GL_PROJECTION );
    glLoadIdentity();
    gluOrtho2D( 0,800,0,500);
}

void MyDisplay()
{
    glClear( GL_COLOR_BUFFER_BIT );
    glBegin( GL_LINES ); // I want to draw lines.
    glColor3ub(255,255,255);
    int x = 50, y = 0, i;
    for( i=0; i<800/20; i++ )
    {
        glColor3ub(rand()%255,rand()%255,rand()%255);
        glVertex2i(x,y);
        glVertex2i(x,500);
        x = x + 20;
    }
    x = 0, y = 50;
    for( i=0; i<500/20; i++ )
    {
        glColor3ub(rand()%255,rand()%255,rand()%255);
        glVertex2i(x,y);
        glVertex2i(800,y);
        y = y + 20;
    }
    glEnd(); // I have finished drawing lines.
    glFlush(); 
}
void main( int argc, char **argv )
{
    glutInit( &argc,argv ); // initialisation of GLUT library.
    glutInitDisplayMode( GLUT_SINGLE | GLUT_RGB ); // initialise display mode.
    glutInitWindowSize( 800,500 ); // initialise window size:
    glutInitWindowPosition( 0,0 ); // initialise position of window.
    glutCreateWindow("Grid Box"); // creates the window / dialogue box.
    init();
    glutDisplayFunc( MyDisplay ); // tell that MyDisplay is my display function.
    glutMainLoop(); // event processing / event handling.
}
