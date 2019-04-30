import sys

def countchar(str):
    tmp = {}
    for s in str:
        if not s in tmp:
            tmp[s] = 0
        tmp[s] = tmp[s] + 1
    return tmp

if __name__ == '__main__':
    instr1 = sys.argv[1]
    instr2 = sys.argv[2]
    
    a1 = countchar(instr1)
    a2 = countchar(instr2)

    if a1 == a2:
        print('True')
    else:
        print('False')
