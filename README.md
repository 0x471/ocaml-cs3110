# OCaml CS3110 Exercises

This repository contains solutions and exercises for CS3110: Functional Programming in OCaml, Cornell University's functional programming course.


## Prerequisites

- OCaml (version 4.14 or later)
- opam (OCaml package manager)
- dune (build system)

## Installation

1. **Clone the repository:**
   ```bash
   git clone <your-repo-url>
   cd ocaml-cs3110
   ```

2. **Install dependencies:**
   ```bash
   opam install . --deps-only
   ```

3. **Build the project:**
   ```bash
   dune build
   ```

## Running Exercises

To run a specific chapter's exercises:

```bash
# Build and run chapter 2 exercises
dune exec exercises/chapter02.exe
```

## Clean Build Artifacts

```bash
dune clean
```