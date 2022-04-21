from PIL import Image
path = "gif\\"
save_path = ".\\"

sumDo = '0b'
sumNo = '0b'
imagefile = []
for i in range(104):
    imagefile.append(Image.open(path+str(i)+'.jpg'))
    for image in imagefile:
        if image.getcolors()[0][1][0] == 12:
            sumDo += '1'
            sumNo += '0'
        else:
            sumDo += '0'
            sumNo += '1'
print(hex(eval(sumDo))[2:-1]).decode('hex')
print(hex(eval(sumNo))[2:-1]).decode('hex')