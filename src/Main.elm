module Main exposing (main)

import Browser
import Browser.Navigation as Nav
import Html



-- Model


type alias Model =
    {}



-- Msg


type Msg
    = Nothing



-- init


init : a -> ( Model, Cmd Msg )
init flags =
    ( {}, Cmd.none )



-- view


view : Model -> Browser.Document Msg
view model =
    { title = "Elm OAuth"
    , body =
        [ Html.div [] [ Html.text "Body changed text" ] ]
    }



-- update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Nothing ->
            ( model, Cmd.none )



-- Main


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }
