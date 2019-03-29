{ openapi      : Text
, info         : ./Info.dhall
, servers      : List ./Server.dhall
, paths        : List ./Paths.dhall
, components   : List ./Component.dhall
, security     : List ./Security.dhall
, tags         : List ./Tag.dhall
, externalDocs : ./Documentation.dhall
}
