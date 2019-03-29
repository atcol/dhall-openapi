{ `$ref`      : Text
, summary     : Text
, description : Text
, get         : ./Operation.dhall
, put         : ./Operation.dhall
, post        : ./Operation.dhall
, delete      : ./Operation.dhall
, options     : ./Operation.dhall
, head        : ./Operation.dhall
, patch       : ./Operation.dhall
, trace       : ./Operation.dhall
, servers     : List ./Server.dhall
, parameters  : ./Parameter.dhall
}
