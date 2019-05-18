# OCaml Examples

This is collection of simple OCaml programs that I have written while learning some basics of OCaml.

## How to get OCaml?

I strongly suggest you to get OCaml via [asdf-ocaml](https://github.com/vic/asdf-ocaml)

## How to build?

I have been experimenting with OCaml build systems, so it took me a while to decide what is best to use.

Depending if there is a `.obuild` or `_oasis`, or `dune` file, use either 
- [obuild](https://github.com/ocaml-obuild/obuild)
- [oasis](https://ocaml.org/learn/tutorials/setting_up_with_oasis.html)
- [dune](https://github.com/ocaml/dune)

### Obuild

`obuild` is super simple. After installing it with opam, first configure the project with

`obuild configure`

and after that you're ready to build the project(s) using:

`obuid build`

That will result in executable being created in the same folder where `*.obuild` file is stored

### Dune

`obuild` is great for just building binaries, and is super simple. `Dune` on the other hand seems to be default choice for OCaml projects right now, it also seem to work much better with unit tests.

type:

`dune build <projectname>.exe` to build your executable (the `.exe` suffix is part of the convention, no matter what OS you use).

## How to run unit tests

I have tried to write some unit tests. If they exist, they shoul  be placed inside `test` directory.
In such a case, type: `dune runtest` to have unit tests run.
Please note: Ounit has to be installed via Opam first.
