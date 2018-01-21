module Update exposing (..)

import Model exposing (Model, Scene(..))


type Msg
    = NoOp
    | ChangeScene Scene


update : Msg -> Model -> Model
update msg model =
    case msg of
        ChangeScene nextScene ->
            { model | scene = nextScene }

        NoOp ->
            model
