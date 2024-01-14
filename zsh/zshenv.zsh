# Mac OS X uses path_helper and /etc/paths.d to preload PATH, clear it out first
if [ -x /usr/libexec/path_helper ]; then
    PATH=''
    eval `/usr/libexec/path_helper -s`
fi

# /usr/local/bin is also first in /etc/paths
export PATH="/usr/local/bin:$PATH"

# if recipes
if [ -x ~/recipes ]; then
    export PATH="$HOME/recipes:$PATH"
fi
