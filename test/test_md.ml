let md =
  {| OCaml is a great language, e.g.

```ocaml
let add a b = a + b 
```

And some bash...

```bash
~/$ ls ~/.opam
```

And some sh...

```sh
~/$ ls ~/.opam
```
|}

let test_transform () =
  let omd_t = Omd.of_string md |> Hilite.Md.transform in
  Format.printf "%s" (Omd.to_sexp omd_t)

let () = test_transform ()
