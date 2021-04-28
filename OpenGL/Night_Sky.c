#include<stdio.h>
#include<GL/gl.h>
#include<GL/glu.h>
#include<GL/glut.h>
void init()
{
    glClearColor(0.0f,0.0f,0.0f,0.0f); //clear the color buffer. // 0-1
    glColor3f(1,1,1);
    glPointSize(1.0f); // size of the point
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0,640,0,480);
    
}

void MyDisplay()
{   // if no colours are added : black
    // if all the colours are added: white
    glClear(GL_COLOR_BUFFER_BIT);
    
    glBegin(GL_POINTS);
    for (int i=0; i<75; i++)
    {
        glColor3ub(255,255,255); //0-255
        glVertex2i(rand()%640,rand()%480);
    }
    glEnd();
    glFlush();
}
void main(int argc, char **argv)
{
    glutInit(&argc,argv); // This function will initialise the GLUT Library.
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);

    glutInitWindowSize(640,480); //Initialise window size.
    glutInitWindowPosition(10,10); //Initialise window position.
    glutCreateWindow("*A sky full of stars*"); //Create a window

    init(); //Initialise other aspects.

    glutDisplayFunc(MyDisplay); //tell what my display function is.

    glutMainLoop(); // event handling
}
