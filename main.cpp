#include <iostream>
#include <GL/glut.h> 
#include <unistd.h>
#include <math.h>

extern "C" int add_numbers(int a, int b);
extern "C" float mul_float_by_two(float a);
extern "C" float sin_a(int degree);
extern "C" float cos_a(int degree);

int global_degree = 0;

void display()
{
    glClear(GL_COLOR_BUFFER_BIT);  // Clear the color buffer

    // Set the drawing color to red (in RGB)
    glColor3f(1.0f, 0.0f, 0.0f);

    // Begin drawing a polygon (in this case, a square)
    glBegin(GL_QUADS);  
    glVertex2f(-0.75f * cos_a(global_degree), -0.5f);  // Bottom-left corner
    glVertex2f( 0.75f * cos_a(global_degree), -0.5f);  // Bottom-right corner
    float value = add_numbers(1,1) / 8.0;
    glVertex2f( 0.5f * cos_a(global_degree),  0.5f);  // Top-right corner
    glVertex2f(-0.5f * cos_a(global_degree),  0.5f);  // Top-left corner*/
    glEnd();
    
    glColor3f(0,0,0);
    glBegin(GL_TRIANGLES);
    glVertex2f(-0.3,0.3);
    glVertex2f(0.1,0.3);
    glVertex2f(0.3,-0.3);
    glEnd();
    glFlush();
    // usleep(1e6);
    global_degree++;
    sin_a;
}

void keyboard(unsigned char key, int x, int y)
{
    if(key == 27)
    {
        std::cout << "Exiting " << std::endl;
        exit(0);
    }
    // std::cout << key << std::endl;
    // std::cout << x << std::endl;
    // std::cout << y << std::endl;
}

// void init()
// {
    // glMatrixMode(GL_PROJECTION_MATRIX);
    // glLoadIdentity();
    // glOrtho(-1.0, 1.0, -1.0, 1.0, -1.0, 1.0);
// }

void timer(int value)
{
    glutPostRedisplay();
    glutTimerFunc(16, timer, 0);
}

int main() {
    int argc = 1;
    char* argv[] = {(char*)"my_program"};
    glutInit(&argc, argv);

    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB); // Set display mode (single buffer, RGB color)
    glutInitWindowSize(glutGet(GLUT_SCREEN_WIDTH), 960); // Set window size (800x600 pixels)
    glutCreateWindow("Simple GLUT Window"); // Create a window with a title

    // init();
    // Enter the GLUT event processing loop
    glutDisplayFunc(display);
    glutTimerFunc(0, timer, 0);
    glutKeyboardFunc(keyboard);
    glutMainLoop();
    return 0;
}