import sys


def main1(str) -> bool:
    tmp = {}

    for s in str:
        if tmp[s] is not None:
            return False
        tmp[s] = 'a'

    return True

def main2(str) -> bool:
    l = len(str)
    for i in range(l):
        for j in range(i+1, l):
            if str[i] == str[j]:
                return False

    return True
        

if __name__ == '__main__':
    if sys.argv[2] == 1:
        print(main1(sys.argv[1]))
    else:
        print(main2(sys.argv[1]))
