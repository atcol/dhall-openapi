let Single  = { schema   : Optional ./SchemaRef.dhall
              , example  : Optional Text
              , encoding : Optional ./Encoding.dhall 
              }
let MultiEx = { schema   : Optional ./SchemaRef.dhall
              , examples : Optional (List { mapKey : Text, mapValue : ./ExampleRef.dhall })
              , encoding : Optional ./Encoding.dhall 
              }
in
< SingleEx : Single
| MultipleEx : MultiEx
>
