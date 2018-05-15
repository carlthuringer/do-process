module Model exposing (Model, Scene(..), Script, Action(..), initialModel)


type Scene
    = TitleScene
    | CourtScene


type alias Model =
    { scene : Scene
    , script : Script
    , performance : Action
    }


type alias Performances =
    List ScriptLine


type alias Name =
    String


type alias Actor =
    { name : Name }


type alias Statement =
    String


type Action
    = Speak Actor Statement
    | EmptyStage


type alias ScriptLine =
    { action : Action }


type alias Script =
    List Action


initialScript : Script
initialScript =
    let
        anna =
            { name = "Anna" }
    in
        [ Speak anna "Hello, Bob." ]


initialModel : Model
initialModel =
    { scene = TitleScene
    , script = initialScript
    , performance = EmptyStage
    }
