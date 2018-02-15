#!/usr/bin/env python3
# -*- coding: utf-8 -*-

'''
matrix multip
'''

MATRIX_A = [[1, 2], [3, 4]]
MATRIX_B = [[5, 6], [7, 8]]
MATRIX_C = [[0, 0], [0, 0]]

for s in range(2):
    for p in range(2):
        for q in range(2):
            MATRIX_C[p][q] += MATRIX_A[p][s] * MATRIX_B[s][q]

print(MATRIX_C)
