for SOURCE in $(find . -not -path '*/\.*' -iname '*.symlink')
do
  DEST="$HOME/.$(basename "${SOURCE%.symlink}")"
  ln -si "$PWD/${SOURCE#./}" "$DEST"
done
