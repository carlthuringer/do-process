module View exposing (..)

import Html exposing (Html, div, h1, text, button)
import Html.Attributes as Attributes exposing (style)
import Html.Events as Events exposing (onClick)
import Update exposing (Msg(..))
import Model exposing (Model, Scene(..))


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


titleScene : model -> Html Msg
titleScene model =
    div
        [ style
            [ ( "display", "inline-block" )
            , ( "margin", "auto" )
            ]
        ]
        [ h1 [ style [ ( "display", "inline-block" ) ] ]
            [ text "DO Process" ]
        , button
            [ style
                [ ( "display", "block" )
                , ( "margin", "auto" )
                ]
            , onClick (ChangeScene CourtScene)
            ]
            [ text "Go to Court" ]
        , text (toString model)
        ]
        |> gameWindow


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
        |> gameWindow


view : Model -> Html Msg
view model =
    case model.scene of
        TitleScene ->
            titleScene model

        CourtScene ->
            courtScene model
