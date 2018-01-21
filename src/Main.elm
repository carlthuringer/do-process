module Main exposing (..)

import Html
import Html.Attributes
import Html.Events
import Model exposing (Model, Scene(..))
import Update exposing (Msg(..))


-- View


gameWindow : Html.Html msg -> Html.Html msg
gameWindow content =
    Html.div
        [ Html.Attributes.style
            [ ( "display", "flex" ) ]
        ]
        [ Html.div
            [ Html.Attributes.style
                [ ( "border", "1px solid black" )
                , ( "width", "640px" )
                , ( "height", "480px" )
                , ( "margin", "auto" )
                , ( "display", "flex" )
                ]
            ]
            [ content ]
        ]


titleScene : model -> Html.Html Msg
titleScene model =
    Html.div
        [ Html.Attributes.style
            [ ( "display", "inline-block" )
            , ( "margin", "auto" )
            ]
        ]
        [ Html.h1
            [ Html.Attributes.style
                [ ( "display", "inline-block" ) ]
            ]
            [ Html.text "DO Process" ]
        , Html.button
            [ Html.Attributes.style
                [ ( "display", "block" )
                , ( "margin", "auto" )
                ]
            , Html.Events.onClick (ChangeScene CourtScene)
            ]
            [ Html.text "Go to Court" ]
        , Html.text (toString model)
        ]
        |> gameWindow


courtScene : model -> Html.Html Msg
courtScene model =
    Html.div []
        [ Html.text "You are in court"
        , Html.button
            [ Html.Attributes.style
                [ ( "display", "block" )
                , ( "margin", "auto" )
                ]
            , Html.Events.onClick (ChangeScene TitleScene)
            ]
            [ Html.text "Go to Title" ]
        ]
        |> gameWindow


view : Model -> Html.Html Msg
view model =
    case model.scene of
        TitleScene ->
            titleScene model

        CourtScene ->
            courtScene model


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = Model.initialModel
        , update = Update.update
        , view = view
        }
