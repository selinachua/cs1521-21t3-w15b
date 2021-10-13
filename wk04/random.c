void loop_bits(int32_t num) {
    // left -> right
    // ??
    // 00000....000100 -> mask
    // --------------- &
    // 10000....000000 -> result
    // extract bits
    // 1. creating the mask
    // 2. extraction
    int32_t mask = 1; // 00000....00001

    // 1000 >> 1 = 0100

    int i = 0;
    while (i < 32) {
        int32_t result = num & mask;
        if (result == 0) {
            printf("0");
        } else {
            printf("1");
        }
        mask = mask >> 1;
        i++;
    }
}