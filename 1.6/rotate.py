import sys

if __name__ == '__main__':
    N = int(sys.argv[1])

    array = []
    offset = 0
    size = N
    for i in range(N):
        array.append(range(offset, size))
        offset += N
        size += N

    print('in')
    for i in range(N):
        print(array[i])

    for i in range(N/2):
        size = N - 2 * i
        offset = i
        last = size - 1 + offset
        #print('size ' + str(size))
        #print('offset ' + str(offset))
        #print('last ' + str(last))
        for j in range(size-1):
            #print(str(i) + ', ' + str(j))
            tmp = array[i][j+offset]
            #print(tmp)

            array[i][j+offset] = array[last - j][i]
            #print(array[i][j+offset])

            array[last - j][i] = array[last - (i-offset)][last - j]
            #print(array[last - j][i])

            array[last - (i-offset)][last - j] = array[j+offset][last - (i-offset)]
            #print(array[last - (i-offset)][last - j])

            array[j+offset][last - (i-offset)] = tmp
            #print(array[j+offset][last - (i-offset)])

    print('out')
    for i in range(N):
        print(array[i])

