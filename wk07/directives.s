# More directives in MIPS.

        .data
# struct { int x; int y; } v7;
v7:
        .space  8
# struct { int x; int y; } v8[4];
v8:
        .space  32
# struct { int x; int y; } *v9[4];
# int *v9[4];
v9:
        .space  16