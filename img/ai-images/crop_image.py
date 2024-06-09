# Images are first processed with gimp to include fuzzy border... then we can use this script to reduce the transparent area!
# https://www.thesquirrelchase.com/2019/01/22/gimp-fuzzy-transparent-border/
#    Open photo
#    Select–select all.
#    Layer–Transparent–Add alpha channel.
#    Filter–Decor–Fuzzy Border
#    In Fuzzy Border dialog box make sure “flatten image” is not checked. Adjust other parameters to taste. (we used default, 16, etc.) Click ok.
#    Select the copy made by the process.
#    Layer–transparency–alpha to selection.
#    Layer–delete layer. DO NOT PANIC!!
#    Edit–clear.
#    Save image as a .png file.

import sys
from PIL import Image

for im in sys.argv[1:]:
    img = Image.open(im)
    w, h = img.size
    img.crop((5, 5, w - 5, h - 5)).save(im)
