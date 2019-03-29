let ServerVar = < Enum : { enum : List Text } | Default : { default : Text } | Description : { description : Text } >
in
{ url         : Text
, description : Text
, variables   : List { mapKey : Text, mapValue : List { mapKey: Text, mapValue : List ServerVar } }
}
