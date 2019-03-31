# dhall-openapi

Dhall expressions for OpenAPI 3.0.x

## Motivation

Dhall is an excellent tool. I often think of it as "programmable schema". 

Not being able to go from Dhall to XSD and/or to Java/Haskell/Python, I wondered if I could at least go to an interim format such as OpenAPI so
I can easily build a service and its domain objects in a less-verbose language that has a faster feedback loop that is _type-safe_. The result
is this repo.

### Known Issues

 * The Schema type doesn't fairly represent the JSON schema structure as referenced in the OpenAPI Specification. This is a work in progress
