Key = '~}|{zyxwvutsrqponmlkjihgfedcba`_^]\\[ZYXWVUTSRQPONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)(' + chr(0x27) + '&%$# !"'

v4=[42,70,39,34,78,44,34,40,73,63,43,64]
flag=""
for i in v4 :
    for j in range(1,len(Key)):
        strlist = ord(Key[j])
        if i ==strlist:
            flag += chr(j+1)

print(flag)