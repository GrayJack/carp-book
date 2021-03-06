# Installation

> Note: This book assumes basic familiarity with the command line.

**Important Note:** Make sure that you have a C/C++ compiler installed, since
Carp compiles to C and then it calls a C/C++ compiler to output a native binary.

## Binaries

_TODO: When 0.4 is released_

## Arch User Repository
If you use ArchLinux, you probably know what to do, but anyway for the early,
still learning, users of the Linux distribution.

You will need the following:
 - A internet connection
 - [Yay](https://github.com/Jguer/yay) or any other AUR helper installed

_Assuming you have `yay` installed_
```sh
$ yay -S carp-git
```

Then set in your shell configuration file an environment variable that tells the
Carp compiler where to find the core library:
```sh
export CARP_DIR=/usr/lib/carp/
```

## From Source
Since the language is in a early stages we'll teach how to install from the
[Carp Github source tree](https://github.com/carp-lang/Carp). For that you'll
need:
 - A internet connection
 - [Git](https://git-scm.com/) installed
 - [Stack](https://haskellstack.org/) installed

Let's start!!

**Cloning the repository:**
```sh
git clone https://github.com/carp-lang/Carp
```

### UNIX and UNIX-like

**Building:**

It may take a while. This will install the binaries inside `$HOME/.local/bin`
folder.

```sh
# Go to the Carp folder
$ cd Carp

# Build AND install command
$ stack install
```

**Setting the core library:**
```sh
# Putting in the appropriated place
$ mkdir ~/.local/lib/carp
$ cp -r core ~/.local/lib/carp
```

If your ~/.local/bin is not in the PATH, add it in your shell configuration file
```sh
export PATH=$PATH:~/.local/bin
```

Then you have to add a environment variable in your shell configuration file to
tell where the core library is.
```sh
export CARP_DIR=~/.local/lib/carp/
```

### Windows

_TODO_
