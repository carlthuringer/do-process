module Update exposing (..)

import Model exposing (Model, Scene(..), Script, Action(..))


type Msg
    = NoOp
    | ChangeScene Scene
    | NextLine Script


update : Msg -> Model -> Model
update msg model =
    case msg of
        ChangeScene nextScene ->
            { model | scene = nextScene }

        NextLine script ->
            case List.head script of
                Nothing ->
                    let
                        finalWord =
                            Speak { name = "Carl" } "That's all, folks!"
                    in
                        { model | performance = finalWord }

                Just firstLine ->
                    { model | performance = firstLine }

        NoOp ->
            model
