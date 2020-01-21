# REPL and Compiler

## The REPL

Let's start with the REPL, it stands for _Read Eval Print Loop_, it is a common
feature in many languages and almost cultural in Lisp based languages, the way
it works is quite simple, it reads the expression or statement given by the user,
then evaluate it, print it's result and do it all over again. A REPL is great
tool for testing and prototyping a idea direct from the terminal.

In Carp, you can start the REPL invoking the carp binary without parameters.

On UNIX/UNIX-Like:

```sh
$ carp
```

On Windows:

```cmd
> carp
```

Inside the REPL, there is some special features that can be used and probably
will be helpful when writing or debugging code.

**Help:** With no parameter, it displays the general help message, while giving
a chapter name.

```clj
;; No parameter
(help)

;; With parameter
(help "language")
```

**Type:** It receive a symbol and it gives the type of that

```clj
(def a 10)
(type a)
```

It should return:
```
a : Int
```

Because _a_ is defined as _10_ a **Int**eger number.

**Info:** It receives a symbol and it gives the information about that symbol

```clj
(def a 10)
(info a)
```

In this example, it should return something like:
```
a : Int
Defined at line 1, column 1 in 'REPL'
```

## Compiler

> Note: Unless your project is a library, you project must have a main function.

Carp compiles to C and then call a C compiler to generate the binary. By default
the generated files and binaries will be on a directory called _out_, but it can
be changed in the project configuration.

### Configuring the project

### Compiler flags
