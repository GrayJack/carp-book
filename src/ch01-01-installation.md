# Installation

## Binaries

_TODO: When 0.4 is released_

## Arch User Repository
If you use ArchLinux, you probably know what to do, but anyway for the early,
still learning, users of the Linux distribution.

You will need the following:
 - A internet connection
 - Yay installed

_Assuming you have `yay` installed_
```sh
yay -S carp-git
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
 - Git installed
 - Stack installed

### UNIX and UNIX-like

Assuming you're know the basics of terminals, let's start:

**Cloning the repository:**
```sh
git clone https://github.com/carp-lang/Carp
```

**Building:**

It may take a while. This will install the binaries inside `$HOME/.local/bin`
folder.

```sh
# Go to the Carp folder
cd Carp

# Build AND install command
stack install
```

**Setting the core library:**
```sh
# Putting in the appropriated place
mkdir ~/.local/lib/carp
cp -r core ~/.local/lib/carp
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
