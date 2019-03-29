let Resp    = ../types/Responses.dhall
let RespRef = ../types/ResponseRef.dhall
let Media   = ../types/MediaType.dhall
let SchemaRef = ../types/SchemaRef.dhall
in
{ openapi      = "3.0.2"
, info         = { title = "Example API", version = "3.0.2" } 
, servers      = [{ url = "http://localhost/" }]
, paths        = [{
    mapKey = "/hello"
  , mapValue = [{
      get = {
        description = "Try it and see.."
        , responses   = Resp.HttpStatus {
            mapKey   = "200"
          , mapValue = [RespRef.Resp {          
                description = "A message."
              , content = [{
                  mapKey = "application/json"
                , mapValue = Media.SingleEx {
                  schema = SchemaRef.Schema [
                    { mapKey = "type", mapValue = "string" }
                  ]
                  , encoding = None ../types/Encoding.dhall
                }
              }]
            }
          ]
        }
      }
    }]
  }]
, components   = [{=}]
, security     = [{=}]
, tags         = [] : List ../types/Tag.dhall
, externalDocs = { url = "file://../README.md" }
}
