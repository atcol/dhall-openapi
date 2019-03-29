let Single  = { schema   : ./SchemaRef.dhall
              , example  : Text
              , encoding : ./Encoding.dhall 
              }
let MultiEx = { schema   : ./SchemaRef.dhall
              , examples : List { mapKey : Text, mapValue : ./ExampleRef.dhall }
              , encoding : ./Encoding.dhall 
              }
in
< SingleEx : Single
| MultipleE: MultiEx
>
