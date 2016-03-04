module Sha256 (digest) where

{-| This library is a port of the SHA256 algorithm in JavaScript
from Meteor (originally written by Angel Marin and Paul Johnston).

# Hashing
@docs digest

-}


import Native.Sha256


{-| Computes the SHA256 hex digest of a given string.
-}
digest : String -> String
digest =
    Native.Sha256.digest