# Hello, World!

Now that you have Carp installed, lets start with the tradition of writing a
hello world program. It's a simple program that output in the terminal `Hello,
World!` and that is it.


## Creating a Project Directory
Start by making a directory to store your Carp code. It doesn't matter where,
but for this book exercises we do recommend to crate a directory in your home
directory just to put all book projects.

For UNIX/UNIX-like:
```sh
$ mkdir ~/book_projects
$ cd  ~/book_projects
$ mkdir hello_world
$ cd hello_world
```

For Windows:
```cmd
> mkdir "%USERPROFILE%\book_projects"
> cd /d "%USERPROFILE%\book_projects"
> mkdir hello_world
> cd hello_world
```
## Writing and Running a Carp Program

The next step is to create a new file called _Main.carp_.

> Note that Carp files end with `.carp`. If you are using more than one word in
> your filename, write the first letter of each word as upper case, for example,
> use _HelloWorld.carp_ instead of _Helloworld.carp_.

Now open the _Main.carp_ file you just created and enter the code in Listing 1-1

```clj
(defn main []
    (println* "Hello, World!"))
```
<span class="caption">Listing 1-1: A program that prints `Hello, world!`</span>

Save the file and go to the terminal window and enter the following command:

```sh
carp -x Main.carp
```

The `-x` flag tells the compiler to compile and run the program.

## Anatomy of a Carp Program

Let's understand what is going on this program.

```clj
(defn main []
                              )
```

Here we have tree things to look at. The first is the _defn_, it is a keyword
that let us define a new function, it is followed by a function name, in this
case it is _main_, then followed by the parameter list (the _[]_ part), the list is empty because this function does not receive a parameter, if the parameter list was not empty it would have something inside the square brackets.

The _main_ function is special, because it is the first part of the code that
runs in every executable Carp program.

Inside of the _main_ function we have:

```clj

    (println* "Hello, World!")
```

This line prints text to the screen. There is some details in here:

The _println*_ here is a Carp macro. Although it is something different than a
function, the call syntax is the same, you cannot tell the difference until you
look into the function/macro implementation. And everything between e double quotes (`"`) is a string literal.
