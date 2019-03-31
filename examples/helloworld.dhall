let Encoding     = ../types/Encoding.dhall
let Example      = ../types/Example.dhall Text
let Responses    = ../types/Responses.dhall Text
let ResponseRef  = ../types/ResponseRef.dhall Text
let Media        = ../types/MediaType.dhall Text
let SchemaRef    = ../types/SchemaRef.dhall
in
{ openapi      = "3.0.2"
, info         = { title = "Example API", version = "3.0.2" } 
, servers      = [{ url = "http://localhost/" }]
, paths        = [{
    mapKey = "/hello"
  , mapValue = {
      get = {
        description  = "Everything starts with hello world!"
        , responses  = Responses.HttpStatus {
            mapKey   = "200"
          , mapValue = ResponseRef.Resp {
              description = "A message."
            , headers = [] : List { mapKey : Text, mapValue : ../types/HeaderRef.dhall }
            , links   = [] : List { mapKey : Text, mapValue : ../types/LinkRef.dhall   }
            , content = [{
                mapKey = "application/json"
              , mapValue = Media.Single {
                schema = (SchemaRef.Schema [
                  { mapKey = "type", mapValue = "string" }
                ])
                , encoding = None Encoding
                , example  = { summary       = "Example output"
                              , description   = "Hello World example"
                              , value         = "Hello, world!"
                              , externalValue = ""
                              }
              }
            }]
          }
        }
      }
    }
  }]
, components   = [{=}]
, security     = [{=}]
, tags         = [] : List ../types/Tag.dhall
, externalDocs = { url = "file://../README.md" }
}
