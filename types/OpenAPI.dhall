{ openapi      : Text
, info         : ./Info.dhall
, servers      : List ./Server.dhall
, paths        : List ./Path.dhall
, components   : List ./Component.dhall
, security     : List ./Security.dhall
, tags         : List ./Tag.dhall
, externalDocs : ./Documentation.dhall
}
