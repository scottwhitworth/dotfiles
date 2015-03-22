# to search/replace over file with confirmation:
:%s/find/replace/gc
  - % means the whole file
  - g means replace all occurences on a line
  - c confirm each substitution

# replace in a range from mark to current line
- go to first line of range
- press `ma` to set the `a` mark
- go to last line of range
:'a,.s/foo/bar/
  - 'a marked line
  - , range separator
  - . current line
  - s start of substitution

# Refresh each buffer open (eg. after git checkout)
:bufdo :e!
  - bufdo do over each buffer
  - e[dit]! start all over again
