import re
import sys
def fenge():
    alist = []
    with open(sys.argv[1],'r') as f:
        for line in f:
            for i in range(0,len(line),2):
                alist.append(line[i : i+2])
            print ("".join(alist))
            alist = []
if __name__ == "__main__":
    fenge();
