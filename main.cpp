#include <iostream>
#include <GL/glut.h> 
#include <unistd.h>
#include <math.h>

#include "Point.h"
#include "assembly_helper.h"


int global_degree;

void displays()
{
    glClear(GL_COLOR_BUFFER_BIT);  // Clear the color buffer
    // Set the drawing color to red (in RGB)
    glColor3f(1.0f, 0.0f, 0.0f);
    // Begin drawing a polygon (in this case, a square)
    glBegin(GL_QUADS);  
    glVertex2f(-0.75f, -1 * cos_a(global_degree));  // Bottom-left corner
    glVertex2f( 0.75f, -1 * cos_a(global_degree));  // Bottom-right corner
    glVertex2f( 0.5f, 1 * cos_a(global_degree));  // Top-right corner
    glVertex2f(-0.5f, 1 * cos_a(global_degree));  // Top-left corner
    glEnd();
    GLUT_KEY_LEFT;
    GLUT_KEY_UP;
    GLUT_KEY_RIGHT;
    GLUT_KEY_DOWN;
    
    // 
    // glColor3f(0,0,0);
    // glBegin(GL_TRIANGLES);
    // glVertex2f(-0.3,0.3);
    // glVertex2f(0.1,0.3);
    // glVertex2f(0.3,-0.3);
    // glEnd();
    glFlush();
}



// void init()
// {
    // glMatrixMode(GL_PROJECTION_MATRIX);
    // glLoadIdentity();
    // glOrtho(-1.0, 1.0, -1.0, 1.0, -1.0, 1.0);
// }

void keyboards(unsigned char key, int x, int y)
{
    std::cout << "X: " << x << std::endl;
    std::cout << "e: " << y << std::endl;
}

void timer(int value)
{
    glutPostRedisplay();
    glutTimerFunc(7, timer, 0);
}


int main() {
    int argc = 1;
    char* argv[] = {(char*)"my_program"};
    global_degree = 0;
    glutInit(&argc, argv);
    Player_Pos.x = 960;
    Player_Pos.y = 540;

    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB); // Set display mode (single buffer, RGB color)
    glutInitWindowSize(glutGet(GLUT_SCREEN_WIDTH), glutGet(GLUT_SCREEN_HEIGHT)); // Set window size (800x600 pixels)
    glutCreateWindow("Assembly Game"); // Create a window with a title
    // init();
    // Enter the GLUT event processing loop
    glutDisplayFunc(display);
    glutTimerFunc(0, timer, 0);
    glutKeyboardFunc(keyboard);
    glutSpecialFunc(handleSpecialKeypress);
    glutSpecialUpFunc(handleSpecialKeyRelease);
    Player_Pos.Width = 8;
    Player_Pos.Height = 8;
    glutMainLoop();
    return 0;
}