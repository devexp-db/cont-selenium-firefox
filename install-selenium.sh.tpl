#! /bin/sh

. '{{ m.contlib }}/cont-lib.sh'

src='{{ m.source_url }}'
base=$(basename "$src")
dir="{{ m.pkglibdir }}"

mkdir -p "$dir" \
    || cont_fatal "can't create $dir"

curl "$src" -o "$dir/$base" \
    || cont_fatal "can't download $base"

ln -sf "$dir/$base" "$dir/selenium.jar" \
    || cont_fatal "can't install selenium symlink"

# Remove ourselves.
rm '{{ m.install_selenium }}'
