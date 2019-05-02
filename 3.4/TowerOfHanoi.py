import sys

stacks = [[], [], []]

def disp():
    global stacks

    a = input()

    maxlen = 0
    for i in range(len(stacks)):
        l = len(stacks[i])
        if maxlen < l:
            maxlen = l

    for i in range(maxlen):
        tmp = []
        idx = maxlen - i - 1
        for j in range(len(stacks)):
            if idx <= len(stacks[j]) - 1:
                tmp.append(str(stacks[j][idx]))
            else:
                tmp.append(" ")
        print(','.join(tmp))

def move(fr: int, to: int, bf: int, n: int):
    global stacks


    if n == 1:
        stacks[to].append(stacks[fr].pop())
        disp()
        return

    if n == 2:
        stacks[bf].append(stacks[fr].pop())
        disp()
        stacks[to].append(stacks[fr].pop())
        disp()
        stacks[to].append(stacks[bf].pop())
        disp()
        return


    move(fr, bf, to, n-1)
    stacks[to].append(stacks[fr].pop())
    disp()
    move(bf, to, fr, n-1)


if __name__ == '__main__':
    n = int(sys.argv[1])
    
    for i in range(n):
        stacks[0].append(n-i)

    disp()

    move(0, 2, 1, n)
