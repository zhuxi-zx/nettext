from PIL import Image
savepath = ""
path = ''
im = Image.open("文件名")
try:
    #{:d}序号
    im.save(savepath+"gl{:d}.png".format(im.tell()))
    while True:
        im.seek(im.tell()+1)
        im.save(savepath+'gl{:d}.png'.format(im.tell()))
except:
    pass

