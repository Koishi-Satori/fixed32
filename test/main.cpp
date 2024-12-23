#include <cstdlib>
#include <fixed.hpp>
#include <fpmath.hpp>

int main() {
    auto fp1 = fixed32(1);
    auto fp2 = fixed32(3);
    fp2 /= 114.514_f32;
    printf("%f, %f, %f\n", (float) fixed32::e(), (float) fixed32::pi(), (float) fixed32::double_pi());
    printf("%d, %f, %f\n", (int) fp1, (float) (114.514_f32 / 3), (float) fp2);
    ++fp2;
    printf("%f, %f, %b\n", (float) abs(-114.5_f32), (float) fixed32::nearly_compare_epsilon(), 1.114_f32 < 1.115_f32);
    printf("%f, %f, %f\n", (float) sqrt(400_f32), (float) sin(fixed32::pi() / 6), (float) 1.114_f32);
    return 0;
}