import sys
import numpy as np


if __name__ == '__main__':
    
    n = int(sys.argv[1])

    stack = []
    for i in range(n):
        stack.append(np.random.randint(1, 10))

    print(stack)

    buf = []


    while len(stack) > 0:
        v = stack.pop()

        buf_len = len(buf)
        if buf_len == 0 or v <= buf[buf_len-1]:
            buf.append(v)
        else:
            count = 0
            while True:
                buf_len2 = len(buf)
                if buf_len2 == 0 or v <= buf[buf_len2-1]:
                    buf.append(v)
                    break
                else:
                    stack.append(buf.pop())
                    count += 1
            while count > 0:
                buf.append(stack.pop())
                count -= 1


    print(buf)
                
