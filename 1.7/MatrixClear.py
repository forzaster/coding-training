import sys


if __name__ == '__main__':
    
    M = int(sys.argv[1])
    N = int(sys.argv[2])

    array = []
    offset = 0
    size = N
    v = 0
    for i in range(M):
        tmp = []
        for j in range(N):
            tmp.append(v)
            v += 1
        array.append(tmp)


    print('in')
    for i in range(len(array)):
        print(array[i])


    clear_row = set()
    clear_column = set()
    for i in range(len(array)):
        row = array[i]
        for j in range(len(row)):
            if row[j] == 0:
                clear_row.add(i)
                clear_column.add(j)

    for i in clear_row:
        tmp = array[i]
        for j in range(len(tmp)):
            tmp[j] = 0
    
    for j in clear_column:
        for i in range(len(array)):
            array[i][j] = 0


    print('in')
    for i in range(len(array)):
        print(array[i])
