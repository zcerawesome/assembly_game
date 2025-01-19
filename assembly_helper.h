#ifndef ASSEMBLY_HELPER_H
#define ASSEMBLY_HELPER_H

#include "Point.h"
#include <GL/glut.h> 

extern "C"
{
    float sin_a(int degree);
    float cos_a(int degree);
    // extern int global_degree;
    void display();
    void printff(void* input, char inp);
    void printt(char inp);
    void keyboard(unsigned char key, int x, int y);
    void handleSpecialKeypress(int key, int x, int y);
    void handleSpecialKeyRelease(int key, int x, int y);
}


#endif