if [ -n "$1" ] && ! id "$1" >/dev/null 2>&1; then
    useradd -g users -G sudo -d /opt -s /bin/bash -g users -G sudo $1 && echo "ADDED $1"
fi

eval "su $1"