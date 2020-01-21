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

**Type:** It receive a symbol and it gives the type of that symbol

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

This part is quite simple, following the same pattern in the toplevel of the
project:
```clj
(Project.config <setting> <value>)
```

To configure more than one setting, just keep adding the same pattern one more
time in the next line.

Here is the setting options and what it takes as values:
 - `"cflag"`: Takes a _String_: Add a flag to the C compiler.
 - `"libflag"`: Takes a _String_: Add a library flag to the compiler.
 - `"compiler"`: Takes a _String_: Set what compiler should be run with the `build` command.
 - `"title"`: Takes a _String_: Set the title of the current project (the final binary name will be this string)
 - `"prompt"`: Takes a _String_: Set the prompt in the REPL
 - `"search-path"`: Takes a _String_: Add a path where the Carp compiler will look for '\*.carp' files
 - `"output-directory"`: Takes a _String_: Where to put build artifacts
 - `"docs-directory"`: Takes a _String_: Where to put generated docs
 - `"generate-only"`: Takes a _Bool_: Set to true if you don't want to run the C compiler when building
 - `"echo-c"`: Takes a _Bool_: When a form is defined using 'def' or 'defn' its C code will be printed
 - `"echo-compiler-cmd"`: Takes a _Bool_: When building the project the command for running the C compiler will be printed
 - `"print-ast"`: Takes a _Bool_: The 'info' command will print the AST for a binding

### Compiler flags
