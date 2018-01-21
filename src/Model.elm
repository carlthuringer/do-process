module Model exposing (Model, Scene(..), initialModel)


type Scene
    = TitleScene
    | CourtScene


type alias Model =
    { scene : Scene }


initialModel : Model
initialModel =
    { scene = TitleScene }
