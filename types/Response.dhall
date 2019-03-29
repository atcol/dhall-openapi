{ description : Text
, headers     : List { mapKey : Text, mapValue : ./HeaderRef.dhall }
, content     : List { mapKey : Text, mapValue : ./MediaType.dhall }
, links       : List { mapKey : Text, mapValue : ./LinkRef.dhall   }
}
