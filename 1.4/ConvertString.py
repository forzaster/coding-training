import sys


if __name__ == '__main__':
    str = sys.argv[1]

    print(str.replace(' ', '%20'))

    newstr = []
    for s in str:
        if s == ' ':
            newstr.append('%20')
        else:
            newstr.append(s)
    print(''.join(newstr))
