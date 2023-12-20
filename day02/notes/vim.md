# vim

- vi improved
- the best editor
- modes
  - view mode
    - read only mode where you can not insert anything
  - insert mode
    - used to insert contents in the file

```bash

# go to insert mode
> esc + i

# delete the previous word
> ctrl + w

# move to the next word
> w or W

# undo
> esc u

# redo
> ctr + r

```

```bash

# stop insert mode (come out of insert mode)
> esc

# go to the last character of the line
> esc shift + 4 or esc $

# copy (yank) current line
> esc yy

# copy multiple lines from current line
> esc <no>y

# delete (move) the current line
# the line get copied in the memory before it gets delete
> esc dd

# delete multiple lines
> esc <no>dd

# paste the copied contents
> esc p

# delete current word
> esc dw

# insert a blank line below the current line
> esc o

# move to the next page
> shift + }}}

# move to the previous page
> shift + {

# go to a specific line
> esc :<line number>

# go the first line of the document
> esc :1
> esc gg

# to the last line of the document
> esc shift g

# quit the current document
> esc :q

# quit without saving
> esc :q!

# save the current state
> esc :w

# quit with saving the contents
> esc :wq

```

```bash

# open vim with multiple files
> vim file1 file2 -O

# switch between the files
> esc ctrl + ww

# quit all
> esc :qa

# quit with saving the changes
> esc :wqa

# quit without saving the changes
> esc :qa!

```
