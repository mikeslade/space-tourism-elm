module Pages.Technology exposing (page)

import Html exposing (Html)
import View exposing (View)


page : View msg
page =
    { title = "Pages.Technology"
    , body = [ Html.text "/technology" ]
    }
