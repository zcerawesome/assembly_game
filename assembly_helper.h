#ifndef ASSEMBLY_HELPER_H
#define ASSEMBLY_HELPER_H

extern "C"
{
    void display();
    void keyboard(unsigned char key, int x, int y);
    void handleSpecialKeypress(int key, int x, int y);
    void handleSpecialKeyRelease(int key, int x, int y);
}

#endif