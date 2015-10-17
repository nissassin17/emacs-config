DICT_FILE=/home/haidang-ubuntu/emacs-haidang/dict/c-mode
GEN_AC_DICT=/home/haidang-ubuntu/emacs-haidang/ac-dict-reset/gen-ac-dict
REFINE_KEY=/home/haidang-ubuntu/emacs-haidang/ac-dict-reset/refine-key
LS_FLAGS=-dr1aH
TMP_FILE=/tmp/ac-dict

# delete file first
rm -rf $DICT_FILE >/dev/null 2>/dev/null
rm -rf TMP_FILE

# loop
for i in \
    "/gtk+" \
    "/usr/include/gtk-2.0" \
    "/usr/lib/gtk-2.0/include" \
    "/usr/include/atk-1.0" \
    "/usr/include/cairo" \
    "/usr/include/pango-1.0" \
    "/usr/include/gio-unix-2.0" \
    "/usr/include/pixman-1" \
    "/usr/include/freetype2" \
    "/usr/include/libpng12" \
    "/usr/include/glib-2.0" \
    "/usr/lib/glib-2.0/include" \
    "/usr/local/include" \
    "/usr/local/lib/gcc/i686-pc-linux-gnu/4.4.4/include" \
    "/usr/local/lib/gcc/i686-pc-linux-gnu/4.4.4/include-fixed" \
    "/usr/include"
do
#ls -d -r -1 -a -H $i 2>/dev/null
    ls $LSFLAGS $i/**/* 2>/dev/null | xargs cat 2>/dev/null| $GEN_AC_DICT 2>/dev/null| $REFINE_KEY >>$TMP_FILE 2>/dev/null; $REFINE_KEY <$TMP_FILE >$DICT_FILE
done
# ls -d -r -1 -a -H /usr/include/*.h | xargs cat |/home/haidang-ubuntu/emacs-haidang/ac-dict-reset/gen-ac-dict | /home/haidang-ubuntu/emacs-haidang/ac-dict-reset/refine-key >/home/haidang-ubuntu/emacs-haidang/dict/c-mode
# cat /home/haidang-ubuntu/ac-dict | xargs cat |/home/haidang-ubuntu/emacs-haidang/ac-dict-reset/gen-ac-dict | /home/haidang-ubuntu/emacs-haidang/ac-dict-reset/refine-key >/home/haidang-ubuntu/emacs-haidang/dict/c-mode

exit 0