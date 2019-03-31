\(a : Type) -> { description : Text
               , headers     : List { mapKey : Text, mapValue : ./HeaderRef.dhall }
               , content     : List { mapKey : Text, mapValue : ./MediaType.dhall a }
               , links       : List { mapKey : Text, mapValue : ./LinkRef.dhall   }
}
