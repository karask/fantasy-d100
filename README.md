
# KK's Introduction

I used Krozark's great template for my custom rules of OpenQuest. See the rest of the README for credits and details. 

This has much more than my custom rules though. It has several balancing additions and new rules while staying true to OQ's rational of being simple, flexible but still relatively realistic.


# RPG LaTeX Template

This is an attempt at a RPG LaTeX template.
The template compiles with xetex and pdflatex.

### Book
Full preview https://github.com/Krozark/RPG-LaTeX-Template/blob/master/sample/book.pdf

![Preview](https://raw.githubusercontent.com/Krozark/RPG-LaTeX-Template/master/sample/book.jpg)

### Cards
![Preview](https://raw.githubusercontent.com/Krozark/RPG-LaTeX-Template/master/sample/cards.png)

### Installation

Just clone the repo. From terminal:

```sh
$ git clone https://github.com/Krozark/RPG-LaTeX-Template.git
$ cd RPG-Latex-Template
$ xelatex book.tex
$ pdflatex cards.tex
```

If you don't have LaTeX installed, the following should help you out:
#### Ubuntu
```sh
sudo apt-get install texlive-full
```
#### Arch
```sh
sudo pacman -S texlive-bin texlive-core texlive-latexextra
```
It's a bit unclear exactly what subset of features this module needs. As a general rule, we'd recommend installing one of larger ones.

### Todo's

 - Consider implementing more complex tables for monsters, etc.
 - Clean up the table-preset
 - Create more elegant solution for spacing before and after boxes (using \vspace is rather rigid when two boxes follow in a row)
 - Add subtitle option for boxes
 - Sort out box-decals when boxes break column or page
 - Look into adding the ability to add large images to the document. There are some documents made with InDesign out there that accomplish this quite well.


### Credit

 - Sword : http://opengameart.org/content/medieval-sword
 - Icons : http://game-icons.net/
 - The fonts in this documents were made by Reddit user /u/Solbera, and are released under the CC-BY-SA 4.0 license.
 - Some decorations (footers, headers, etc.) were ripped and vectorialised from the Player's Handbook and are probably not safe to redistribute as such.
 - The background image is from the Homebrewery, created by Scott Tolksdorf, and is released under the MIT license.
 - D\&D, the D\&D logos are intellectual property of Wizards of the Coast LLC.
 - The fonts in this documents were made by Reddit user /u/Solbera, and are released under the CC-BY-SA 4.0 license.
 - Medieval city concept by DeviantArt user davidhueso, released under the CC-BY-NC 3.0 license. (https://www.deviantart.com/davidhueso/art/Medieval-city-concept-372052489)
 - Dagoth Ur Dominion by DeviantArt user Hieronymus7Z, released under the CC-BY-NC-SA 3.0 license. http://hieronymus7z.deviantart.com/art/Dagoth-Ur-Dominion-563369182
 - Imoreith Tundra by DeviantArt user Karbo, released under the CC-BY-NC-SA 3.0 license. http://karbo.deviantart.com/art/Imoreith-Tundra-263257153
 - Cover image: Winter Night by DeviantArt user TomPrante, released under the CC-BY-SA 3.0 license. http://tomprante.deviantart.com/art/Winter-Night-498937866
 

