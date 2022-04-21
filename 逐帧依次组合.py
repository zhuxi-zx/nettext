from PIL import Image
path = ""
savepath = ""

im = Image.new('RGBA', (2*201, 600))

imagefile = []
width = 0
for i in range(201):
    imagefile.append(Image.open(path+'Frame'+str(i)+'.png'))

for image in imagefile:
    im.paste(image, (width, 0, 2+width, 600))
    width = width + 2
    im.save(savepath+'1.png')  # 保存
    im.show()
