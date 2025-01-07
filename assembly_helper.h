#ifndef ASSEMBLY_HELPER_H
#define ASSEMBLY_HELPER_H

#include "Point.h"

extern "C"
{
    float sin_a(int degree);
    float cos_a(int degree);
    extern Point Player_Pos;
    extern Point Player_Velocity;
    void printff(void* input, char inp);
    void printt(char inp);
    void keyboard(unsigned char key, int x, int y);
}


#endif