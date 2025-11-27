(lang dune 3.20)

(source (github niols/camelotte))
(authors "Niols <niols@niols.fr>")
(maintainers "Niols <niols@niols.fr>")

(generate_opam_files true)

(package
 (name monadise)
 (synopsis "Monadise direct-style functions easily")
 (depends
  (ocaml (>= 5.0))
  (alcotest :with-test)
  (alcotest-lwt :with-test)
  (lwt :with-test)))

(package
 (name monadise-lwt)
 (synopsis "Monadise direct-style functions easily")
 (depends
  (ocaml (>= 5.0))
  lwt))

(package
 (name valet)
 (synopsis "An OCaml preprocessor allowing to declare types from `let`-bindings with a preceeding `val` declaration.")
 (depends
  ocaml
  ppxlib))

(formatting (enabled_for dune))
