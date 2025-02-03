#ifndef ASSEMBLY_HELPER_H
#define ASSEMBLY_HELPER_H

extern "C"
{
    extern "C" bool lastPoint;
    extern "C" int Entities_count;
    void display();
    void keyboard(unsigned char key, int x, int y);
    void handleSpecialKeypress(int key, int x, int y);
    void handleSpecialKeyRelease(int key, int x, int y);
}

#endif