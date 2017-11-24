import Html
-- View

view : model -> Html.Html msg
view model = Html.text "Hello test foo"

main : Program Never {} msg
main = Html.beginnerProgram
       { model = {}
       , update = (\msg model -> model)
       , view = view}
