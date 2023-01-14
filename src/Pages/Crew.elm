module Pages.Crew exposing (page)

import Html exposing (Html)
import View exposing (View)


page : View msg
page =
    { title = "Pages.Crew"
    , body = [ Html.text "/crew" ]
    }
