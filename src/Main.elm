module Main exposing (..)

import Html
import Html.Attributes


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


titleScene : model -> Html.Html msg
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
        ]
        |> gameWindow


courtScene : model -> Html.Html msg
courtScene model =
    Html.div []
        [ Html.text "You are in court" ]
        |> gameWindow


view : model -> Html.Html msg
view model =
    titleScene model


main : Program Never {} msg
main =
    Html.beginnerProgram
        { model = {}
        , update = (\msg model -> model)
        , view = view
        }
