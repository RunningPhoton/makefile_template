#include "test.h"

long long mathPow(long long a, long long b) {
    long long ret = 1;
    while(b) {
        if(b & 1)
            ret = ret * a;
        a = a * a;
        b >>= 1;
    }
    return ret;
}
