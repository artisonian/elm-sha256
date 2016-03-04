import Html exposing (..)
import Html.Attributes exposing (..)
import Sha256 as Sha


(=>) = (,)


digests =
    let
        word = "foo"
        phrase = "Hello, world!"
        sentence = "The quick brown fox jumped over the lazy dog."
    in
        [ word => Sha.digest(word)
        , phrase => Sha.digest(phrase)
        , sentence => Sha.digest(sentence)
        ]


digestTableRow : (String, String) -> Html
digestTableRow (raw, hash) =
    tr [ ]
        [ td [ ] [ text raw ]
        , td [ ] [ text hash ]
        ]


view =
    let
        tableHeader =
            tr [ ]
                [ th [ ] [ text "Raw String" ]
                , th [ ] [ text "SHA256 Hex Digest" ]
                ]
    in
        table [ ]
            (tableHeader :: List.map digestTableRow digests)


main =
    view