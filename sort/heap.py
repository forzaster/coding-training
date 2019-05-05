import sys
import numpy as np

def dispHeap(array):
    idx = 0
    next = 1
    count = 0
    s = ''
    for i in array:
        s += str(i)
        if count == pow(2,next) - 2:
            print(s)
            next += 1
            s = ''
        else:
            s += ', '
        count += 1
    print(s)

def visitNode(array, node, n):
    child_L = 2 * node + 1
    child_R = child_L + 1

    if child_L >= n:
        return False
    
    left = array[child_L]

    right = None
    if child_R < n:
        right = array[child_R]

    root = array[node]

    if right is None or left >= right:
        if root < left:
            array[node] = left
            array[child_L] = root
            parent = int((node - 1) / 2)
            visitNode(array, parent, n)
    elif left < right:
        if root < right:
            array[node] = right
            array[child_R] = root
            parent = int((node - 1) / 2)
            visitNode(array, parent, n)

    if right is None:
        return False

    return True


def buildHeap(array, n):
    node = 0
    while True:
        if not visitNode(array, node, n):
            break
        node += 1


def sortHeap(array):
    dispHeap()


if __name__ == '__main__':
    n = int(sys.argv[1])

    array = []
    for i in range(n):
        array.append(np.random.randint(1, 100))
    print('--in--')
    print(array)
    dispHeap(array)

    n = len(array)
    while n > 0:
        buildHeap(array, n)
        root = array[0]
        array[0] = array[n-1]
        array[n-1] = root
        n -= 1

    print('--out--')
    dispHeap(array)
    print(array)
