module Layouts.Default exposing (Model, Msg, Settings, layout)

import Accessibility as Html exposing (Html, a, div, hr, li, nav, span, text, ul)
import Effect exposing (Effect)
import Html.Attributes exposing (class, href, style)
import Layout exposing (Layout)
import Route exposing (Route)
import Shared
import Svg exposing (circle, g, svg)
import Svg.Attributes exposing (cx, cy, d, fill, fillRule, height, r, width)
import View exposing (View)


type alias Settings =
    { title : String }


layout : Settings -> Shared.Model -> Route () -> Layout Model Msg mainMsg
layout settings shared route =
    Layout.new
        { init = init
        , update = update
        , view = view settings route
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    {}


init : () -> ( Model, Effect Msg )
init _ =
    ( {}
    , Effect.none
    )



-- UPDATE


type Msg
    = ReplaceMe


update : Msg -> Model -> ( Model, Effect Msg )
update msg model =
    case msg of
        ReplaceMe ->
            ( model
            , Effect.none
            )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Settings -> Route () -> { fromMsg : Msg -> mainMsg, content : View mainMsg, model : Model } -> View mainMsg
view settings route { fromMsg, model, content } =
    { title = content.title
    , body =
        [ header
        , div [ class "container" ] content.body
        ]
    }


header : Html mainMsg
header =
    div
        [ class "grid header" ]
        [ logo
        , hr [ style "width" "100%", style "border-color" "hsl(var(--clr-white) / 25%)" ] []
        , navigation
        ]


logo : Html msg
logo =
    svg [ width "48", height "48" ]
        [ g [ fill "none", fillRule "evenodd" ]
            [ circle [ cx "24", cy "24", r "24", fill "#FFF" ] []
            , Svg.path [ fill "#0B0D17", d "M24 0c0 16-8 24-24 24 15.718.114 23.718 8.114 24 24 0-16 8-24 24-24-16 0-24-8-24-24z" ] []
            ]
        ]


navigation : Html msg
navigation =
    nav []
        [ ul [ class "primary-navigation underline-indicators flex" ]
            [ navigationItem { link = "/", num = "00", label = "Home", active = True }
            , navigationItem { link = "/destination", num = "01", label = "Destination", active = False }
            , navigationItem { link = "/crew", num = "02", label = "Crew", active = False }
            , navigationItem { link = "/technology", num = "03", label = "Technology", active = False }
            ]
        ]


navigationItem : { link : String, num : String, label : String, active : Bool } -> Html msg
navigationItem { link, num, label, active } =
    let
        attrs =
            if active then
                [ class "active" ]

            else
                []
    in
    li attrs
        [ a [ class "uppercase text-white letter-spacing-2", href link ]
            [ span [] [ text num ]
            , text label
            ]
        ]
