#include <iostream>
#include <GL/glut.h> 
#include <unistd.h>
#include <math.h>

int global_degree;

struct Entity
{
    int x,y,width,height;
};

Entity Player = {200, 200, 8, 8};

int num_entities;
Entity entities_buffer[100] = {0,0,0,0};

GLfloat abs_to_float_x(int input)
{
    input -= 1920/2;
    float value = input / 960.0;
    std::cout << value << std::endl;
    return value;
}

GLfloat abs_to_float_y(int input)
{
    input -= 1080/2;
    float value = input / 540.0;
    return value;
}

void build_square(Entity& input)
{
    glVertex2f(abs_to_float_x(input.x + input.width), abs_to_float_y(input.x + input.height));
    glVertex2f(abs_to_float_x(input.x + input.width), abs_to_float_y(input.x - input.height));
    glVertex2f(abs_to_float_x(input.x - input.width), abs_to_float_y(input.x - input.height));
    glVertex2f(abs_to_float_x(input.x - input.width), abs_to_float_y(input.x + input.height));
}

void display()
{
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(1.0f,0,1.0f);
    glBegin(GL_QUADS);
    build_square(Player);
    glEnd();

    glFlush();

}

void timer(int value)
{
    glutPostRedisplay();
    glutTimerFunc(7, timer, 0);
}

void keyboard(unsigned char key, int x, int y)
{

    if(key == 27)
    {
        std::cout << "Exiting" << std::endl;
        exit(0);
    }
    else
    {
        std::cout << x << ", " << y << std::endl;
    }

}

void handleSpecialKeypress(int key, int x, int y)
{

    

}

void handleSpecialKeyRelease(int key, int x, int y)
{

}

int main()
{
    int argc = 1;
    char* argv[] = {(char*)"my_program"};
    global_degree = 0;
    glutInit(&argc, argv);

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
    glutMainLoop();
    return 0;
}