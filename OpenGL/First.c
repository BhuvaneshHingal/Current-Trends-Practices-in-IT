#include<stdio.h>
#include<GL/gl.h>
#include<GL/glu.h>
#include<GL/glut.h>
void init()
{
    glClearColor(1.0f,0.0f,1.0f,0.0f); //clear the color buffer.
    glColor3f(1,1,1);
    glPointSize(10.0f); // size of the point
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0,640,0,480);
    
}

void MyDisplay()
{   // if no colours are added
    glClear(GL_COLOR_BUFFER_BIT);
    
    glBegin(GL_POINTS);
        glColor3ub(255,255,255);
        glVertex2i(50,50);
    glEnd();
    glFlush();
}
void main(int argc, char **argv)
{
    glutInit(&argc,argv); // This function will initialise the GLUT Library.
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);

    glutInitWindowSize(640,480); //Initialise window size.
    glutInitWindowPosition(10,10); //Initialise window position.
    glutCreateWindow("First"); //Create a window

    init(); //Initialise other aspects.

    glutDisplayFunc(MyDisplay); //tell what my display function is.

    glutMainLoop(); // event handling
}
