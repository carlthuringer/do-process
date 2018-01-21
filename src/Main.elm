module Main exposing (..)

import Html
import Html.Attributes
import Html.Events
import Model exposing (Model, Scene(..))
import Update exposing (Msg(..))
import View


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = Model.initialModel
        , update = Update.update
        , view = View.view
        }
