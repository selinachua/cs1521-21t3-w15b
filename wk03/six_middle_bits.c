#include <stdint.h>

/**
 * We have 32 bits, and we want to get the middle 6 bits.
 * six_middle_bits(00110010....101010...10101010)
 * = ..........101010 &
 * = 00000.....111111 -> mask
 * ----------------------
 * = 0000000...101010
 *
 * 1010101010
 * 0010000000
 *
 */
uint32_t six_middle_bits(uint32_t u) {
    // uint32_t shifted = u >> 13;
    // uint32_t mask = 0x3F; // 0011 1111
    // return shifted & mask;
    return (u >> 13) & 0x3F;
}