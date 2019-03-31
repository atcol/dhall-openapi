let Example   = ./Example.dhall
let MediaType = \(a : Type) ->
  < Single : { schema   : ./SchemaRef.dhall
             , example  : Example a
             , encoding : Optional ./Encoding.dhall 
             }
  | Multiple : { schema   : Optional ./SchemaRef.dhall
               , examples : (List { mapKey : Text, mapValue : (Example a) })
               , encoding : Optional ./Encoding.dhall 
               }
  >
in MediaType
