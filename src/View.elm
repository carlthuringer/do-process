module View exposing (..)

import Html exposing (Html, div, h1, text, button)
import Html.Attributes as Attributes exposing (style)
import Html.Events as Events exposing (onClick)
import Update exposing (Msg(..))
import Model exposing (Model, Scene(..), Action(..))


gameWindow : Html Msg -> Html Msg
gameWindow content =
    div [ style [ ( "display", "flex" ) ] ]
        [ div
            [ style
                [ ( "border", "1px solid black" )
                , ( "width", "640px" )
                , ( "height", "480px" )
                , ( "margin", "auto" )
                , ( "display", "flex" )
                ]
            ]
            [ content ]
        ]


titleScene : Model -> Html Msg
titleScene model =
    div
        [ style
            [ ( "display", "inline-block" )
            , ( "margin", "auto" )
            ]
        ]
        [ h1 [ style [ ( "text-align", "center" ) ] ]
            [ text "DO Process" ]
        , button
            [ style
                [ ( "display", "block" )
                , ( "margin", "auto" )
                ]
            , onClick (NextLine model.script)
            ]
            [ text "Begin" ]
        , renderStage model.performance
        ]



-- limboScene : Model -> Html Msg
-- limboScene model =
--     div [] [renderStage model.performances]


renderStage : Action -> Html Msg
renderStage performance =
    case performance of
        Speak { name } phrase ->
            text (name ++ phrase)

        EmptyStage ->
            text ""



-- renderPerformance : Performance -> Html Msg
-- renderPerformance performance =
--     case performance of
--         Speech


courtScene : model -> Html Msg
courtScene model =
    div []
        [ text "You are in court"
        , button
            [ style
                [ ( "display", "block" )
                , ( "margin", "auto" )
                ]
            , onClick (ChangeScene TitleScene)
            ]
            [ text "Go to Title" ]
        ]


view : Model -> Html Msg
view model =
    case model.scene of
        TitleScene ->
            titleScene model |> gameWindow

        CourtScene ->
            courtScene model |> gameWindow
