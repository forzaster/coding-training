#include <stdio.h>
#include <string>
#include <iostream>

#define BUF_SIZE 1024

static void swap(char* left, char* right) {
    char tmp = *left;
    *left = *right;
    *right = tmp;
}

static void reverse(char *str) {
    size_t len = strnlen(str, BUF_SIZE);
    size_t len2 = len / 2;
    char *left = str;
    char *right = str + len - 1;
    for (int i = 0; i < len2; i++) {
        swap(left, right);
        left++;
        right--;
    }
}

int main() {
    char str[BUF_SIZE];
    printf("Input > ");
    std::cin >> str;
    printf("\n\"%s\"\n", str);
    reverse(str);
    printf("\n\"%s\"\n", str);
    return 0;
}
