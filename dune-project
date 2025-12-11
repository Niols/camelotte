(lang dune 3.20)

(source (github niols/camelotte))
(maintainers "Niols <niols@niols.fr>")

(license MIT)

(generate_opam_files true)

(package
 (name monadise)
 (synopsis "Monadise direct-style functions easily")
 (authors "Niols <niols@niols.fr>")
 (depends
  (ocaml (>= 5.0))
  (alcotest :with-test)
  (alcotest-lwt :with-test)
  (lwt :with-test)))

(package
 (name monadise-lwt)
 (synopsis "Monadise direct-style functions easily")
 (authors "Niols <niols@niols.fr>")
 (depends
  (ocaml (>= 5.0))
   lwt))

(package
 (name next)
 (synopsis "Niols's extended standard library")
 (authors "Niols <niols@niols.fr>")
 (depends
  (ppx_inline_test (or :build :with-test))))

(package
 (name ppx_monad)
 (synopsis "A Syntax Extension for all Monadic Syntaxes")
 (authors "Niols <niols@niols.fr>")
 (depends
   ocaml
   dune-configurator
   ppxlib))

(package
 (name spacedout)
 (synopsis "Helpers to read and write space-separated data files")
 (authors "Niols <niols@niols.fr>")
 (depends
  (ppx_inline_test (or :build :with-test))))

(package
 (name valet)
 (synopsis "An OCaml preprocessor allowing to declare types from `let`-bindings with a preceeding `val` declaration")
 (authors "Niols <niols@niols.fr>")
 (depends
   ocaml
   ppxlib))

(formatting (enabled_for dune))
