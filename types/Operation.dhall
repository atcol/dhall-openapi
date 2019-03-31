{ tags         : List Text
, summary      : Text
, description  : Text
, externalDocs : ./Documentation.dhall
, operationId  : Text
, parameters   : ./ParamRef.dhall
, requestBody  : ./ReqRef.dhall
, responses    : ./Responses.dhall
, callbacks    : List { mapKey : Text, mapValue: List ./CallbackRef.dhall }
, deprecated   : Bool
, security     : List ./Security.dhall
, servers      : List ./Server.dhall
}
