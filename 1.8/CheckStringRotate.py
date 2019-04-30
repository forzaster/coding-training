import sys

if __name__ == '__main__':
    a = sys.argv[1]
    b = sys.argv[2]

    if len(a) is not len(b):
        print('False')
        exit()

    if a == b:
        print('False')
        exit()

    if (a + a).find(b) > 0:
        print('True')
    else:
        print('False')
    


    
