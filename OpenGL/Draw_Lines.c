#include<stdio.h>
#include<GL/gl.h>
#include<GL/glu.h>
#include<GL/glut.h>
void init()
{
    glClearColor(0.0f,0.0f,0.0f,0.0f); //clear the color buffer. // 0-1
    glColor3f(1,1,0);
    glPointSize(10.0f); // size of the point
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0,800,0,500);
    
}

void MyDisplay()
{   // if no colours are added : black
    // if all the colours are added: white
    glClear(GL_COLOR_BUFFER_BIT);
    
    glBegin(GL_LINES);
        glColor3ub(200,200,200); //0-255
        
        glVertex2i(0,0); // x1,y1
        glVertex2i(800,500); // x2,y2
        glVertex2i(0,500); // x3,y3
        glVertex2i(800,0); // x4,y4
        glVertex2i(800/2,500); // x5,y5
        glVertex2i(800/2,0); // x6,y6
        glVertex2i(0,500/2); // x7,y7
        glVertex2i(800,500/2); // x8,y8
        for(int i=0; i<10; i++)
        {
            glColor3ub( rand()%255, rand()%255, rand()%255 );
            glVertex2i(rand()%800,rand()%500);
            //glVertex2i(rand()%640,rand()%480);
            
        }      
    
    glEnd();
    glFlush();
}
void main(int argc, char **argv)
{
    glutInit(&argc,argv); // This function will initialise the GLUT Library.
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);

    glutInitWindowSize(800,500); //Initialise window size.
    glutInitWindowPosition(10,10); //Initialise window position.
    glutCreateWindow("Lines"); //Create a window

    init(); //Initialise other aspects.

    glutDisplayFunc(MyDisplay); //tell what my display function is.

    glutMainLoop(); // event handling
}
