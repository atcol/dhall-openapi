\(a : Type) -> 
  < Default : { default : ./ResponseRef.dhall a }
  | HttpStatus : { mapKey: Text, mapValue : ./ResponseRef.dhall a }
  >
