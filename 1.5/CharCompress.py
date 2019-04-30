import sys
from collections import OrderedDict

if __name__ == '__main__':
    instr = sys.argv[1]

    outstr = OrderedDict()

    for s in instr:
        if s in outstr:
            outstr[s] += 1
        else:
            outstr[s] = 1

    keys = outstr.keys()
    ret = ''
    for k in keys:
        ret += k + str(outstr[k])

    print(ret)
    
        
