## Setup

Emacs-setup for go-lang, ruby, crystal, c, c++, closure, css, java, javascript, php, python, scheme, tcl.

`git clone https://github.com/shukla-praveen/emacs.d.git ~/.emacs.d`

## Additional Installs

`brew install texinfo && brew link texinfo --force`

## Commandline to start emacs

```
cat <<EOF > /usr/local/bin/em
#!/usr/bin/env sh
if [ -z \$1 ]; then
  LAUNCH_DIR=\$PWD
else
  LAUNCH_DIR=\$1
fi
open -n -a Emacs \$LAUNCH_DIR
EOF
chmod 755 /usr/local/bin/em
```

Now from any directory you can run `em` to start emacs in that dir or run `em /path/to/dir` to open a particular directory

Courtesy : [Niranjan's emacs.d](https://github.com/achamian) for basic setup.
