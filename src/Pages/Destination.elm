module Pages.Destination exposing (page)

import Html exposing (Html)
import View exposing (View)


page : View msg
page =
    { title = "Pages.Destination"
    , body = [ Html.text "/destination" ]
    }
