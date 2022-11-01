#!/bin/env bash
: "
Neovim Install

Method: Compile from Scratch to ensure that it is on the latest version

Target Base System: Debian
"

CC="make"
CFLAGS="CMAKE_BUILD_TYPE=RelWithDebInfo"

setup()
{
    : "
    Setup all dependencies required to build
    "
    apt install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
}

build()
{
    : "
    Compile and Build/make the source code into an executable 
    "
    ${CC} ${CFLAGS} && \
        echo -e "[+] Compilation Successful." || \
        echo -e "[-] Compilation Error."
}

install()
{
    : "
    Install and move the compiled binary to the host system
    "
    ${CC} install && \
        echo -e "[+] Installation Successful." || \
        echo -e "[-] Installation Error."
}

clean()
{
    : "
    Cleanup and remove temporary files generated during compilation
    "
    ${CC} clean && \
        echo -e "[+] Cleanup Successful." || \
        echo -e "[-] Cleanup Error."
}

main()
{
    build

    echo -e "" 

    install

    echo -e "" 

    clean
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi