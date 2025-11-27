(lang dune 3.20)

(source (github niols/camelotte))
(authors "Niols <niols@niols.fr>")
(maintainers "Niols <niols@niols.fr>")

(generate_opam_files true)

(package
 (name valet)
 (synopsis "An OCaml preprocessor allowing to declare types from `let`-bindings with a preceeding `val` declaration.")
 (depends
  ocaml
  ppxlib))

(formatting (enabled_for dune))
