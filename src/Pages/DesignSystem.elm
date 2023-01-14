module Pages.DesignSystem exposing (page)

import Accessibility as Html exposing (Html, a, button, div, h1, h2, li, nav, p, section, span, text, ul)
import Accessibility.Aria exposing (selected)
import Html.Attributes exposing (class, href, id, style)
import View exposing (View)


page : View msg
page =
    { title = "Design System"
    , body =
        [ div [ class "container" ]
            [ h1 [ class "ff-serif" ] [ text "Design System" ]
            , colorSection
            , typographySection
            , interactiveElementsSection
            ]
        ]
    }


colorSection : Html msg
colorSection =
    section [ class "flow", id "colors" ]
        [ h2 [ class "numbered-title" ]
            [ span [] [ text "01" ]
            , text "Colors"
            ]
        , div [ class "grid", style "grid-template-columns" "1fr 1fr 1fr" ]
            [ div []
                [ div [ class "bg-dark fs-500", style "padding" "3rem 1rem 1rem", style "border" "1px solid white" ]
                    [ text "#0B0D17"
                    ]
                , div [ class "grid", style "grid-template-columns" "1fr 3fr", style "padding-top" "1rem" ]
                    [ p [ class "text-accent" ] [ text "RGB" ]
                    , p [] [ text "11, 13, 23" ]
                    , p [ class "text-accent" ] [ text "HSL" ]
                    , p [] [ text "230°, 35%, 7%" ]
                    ]
                ]
            , div []
                [ div [ class "bg-accent text-dark fs-500", style "padding" "3rem 1rem 1rem", style "border" "1px solid hsl(var(--clr-light))" ]
                    [ text "#D0D6F9"
                    ]
                , div [ class "grid", style "grid-template-columns" "1fr 3fr", style "padding-top" "1rem" ]
                    [ p [ class "text-accent" ] [ text "RGB" ]
                    , p [] [ text "208, 214, 249" ]
                    , p [ class "text-accent" ] [ text "HSL" ]
                    , p [] [ text "231°, 77%, 90%" ]
                    ]
                ]
            , div []
                [ div [ class "bg-white text-dark fs-500", style "padding" "3rem 1rem 1rem", style "border" "1px solid hsl(var(--clr-white))" ]
                    [ text "#FFFFFF"
                    ]
                , div [ class "grid", style "grid-template-columns" "1fr 3fr", style "padding-top" "1rem" ]
                    [ p [ class "text-accent" ] [ text "RGB" ]
                    , p [] [ text "255, 255, 255" ]
                    , p [ class "text-accent" ] [ text "HSL" ]
                    , p [] [ text "0°, 0%, 100%" ]
                    ]
                ]
            ]
        ]


typographySection : Html msg
typographySection =
    section [ class "flow", id "typography", style "margin" "4rem 0" ]
        [ h2 [ class "numbered-title" ]
            [ span [] [ text "02" ]
            , text "Typography"
            ]
        , div [ class "flex" ]
            [ div [ class "flow", style "flex-basis" "100%" ]
                [ div []
                    [ p [ class "text-accent" ] [ text "Heading 1 - Bellefair Regular - 150px" ]
                    , p [ class "fs-900 ff-serif uppercase" ] [ text "Earth" ]
                    ]
                , div []
                    [ p [ class "text-accent" ] [ text "Heading 2 - Bellefair Regular - 100px" ]
                    , p [ class "fs-800 ff-serif uppercase" ] [ text "Venus" ]
                    ]
                , div []
                    [ p [ class "text-accent" ] [ text "Heading 3 - Bellefair Regular - 56px" ]
                    , p [ class "fs-700 ff-serif uppercase" ] [ text "Jupiter & Saturn" ]
                    ]
                , div []
                    [ p [ class "text-accent" ] [ text "Heading 4 - Bellefair Regular - 32px" ]
                    , p [ class "fs-600 ff-serif uppercase" ] [ text "Uranus, Neptune, & Pluto" ]
                    ]
                , div []
                    [ p [ class "text-accent" ] [ text "Heading 5 - Barlow Condensed Regular - 28px - 4.75 Character Space" ]
                    , p [ class "fs-500 ff-sans-cond uppercase text-accent letter-spacing-1" ] [ text "So, you want to travel to space" ]
                    ]
                ]
            , div [ class "flow", style "flex-basis" "100%" ]
                [ div []
                    [ p [ class "text-accent" ] [ text "Subheading 1 - Bellefair Regular - 28px" ]
                    , p [ class "fs-500 ff-serif uppercase" ] [ text "384,400 KM" ]
                    ]
                , div []
                    [ p [ class "text-accent" ] [ text "Subheading 2 - Barlow Condensed Regular - 14px - 2.35 Character Space" ]
                    , p [ class "fs-200 ff-sans-cond uppercase letter-spacing-3" ] [ text "Avg. Distance" ]
                    ]
                , div []
                    [ p [ class "text-accent" ] [ text "Nav Text - Barlow Condensed Regular - 16px - 2.7 Character Space" ]
                    , p [ class "fs-300 ff-sans-cond uppercase letter-spacing-2" ] [ text "Europa" ]
                    ]
                , div []
                    [ p [ class "text-accent" ] [ text "Body Text" ]
                    , p [] [ text "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisineque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium,ligula sollicitudin laoreet viverra, tortor libero sodales leo,eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo.Suspendisse potenti.Lorem ipsum dolor sit amet, consectetueradipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibhnec urna. In nisi neque, aliquet vel, dapibus id, mattis vel,nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortorlibero sodales leo, eget blandit nunc tortor eu nibh. Nullammollis. Ut justo. Suspendisse potenti.Lorem ipsum dolor sitamet, consectetuer adipiscing elit. Phasellus hendrerit.Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel,dapibus id, mattis vel, nisi." ]
                    ]
                ]
            ]
        ]


interactiveElementsSection : Html msg
interactiveElementsSection =
    section [ class "flow", id "interactive-elements", style "margin" "4rem 0" ]
        [ h2 [ class "numbered-title" ]
            [ span [] [ text "03" ]
            , text "Interactive Elements"
            ]

        -- navigation
        , div []
            [ nav []
                [ ul [ class "primary-navigation underline-indicators flex" ]
                    [ li [ class "active" ]
                        [ a [ class "uppercase text-white letter-spacing-2", href "#" ]
                            [ span [] [ text "00" ]
                            , text "Active"
                            ]
                        ]
                    , li []
                        [ a [ class "uppercase text-white letter-spacing-2", href "#" ]
                            [ span [] [ text "01" ]
                            , text "Hovered"
                            ]
                        ]
                    , li []
                        [ a [ class "uppercase text-white letter-spacing-2", href "#" ]
                            [ span [] [ text "02" ]
                            , text "Idle"
                            ]
                        ]
                    ]
                ]
            ]
        , div [ class "flex" ]
            [ div [ class "flow" ]
                [ -- explore button
                  a [ class "large-button uppercase ff-serif text-dark fs-600 bg-white", href "#" ] [ text "Explore" ]
                ]
            , div [ class "flow", style "flex-basis" "100%" ]
                [ -- tabs
                  div [ class "flex tab-list underline-indicators" ]
                    [ button [ selected True, class "uppercase" ] [ text "Moon" ]
                    , button [ selected False, class "uppercase" ] [ text "Mars" ]
                    , button [ selected False, class "uppercase" ] [ text "Europa" ]
                    ]

                -- dots
                , div [ class "flex dot-indicators" ]
                    [ button [ selected True ]
                        [ span [ class "sr-only" ] [ text "Slide Title" ]
                        ]
                    , button [ selected False ]
                        [ span [ class "sr-only" ] [ text "Slide Title" ]
                        ]
                    , button [ selected False ]
                        [ span [ class "sr-only" ] [ text "Slide Title" ]
                        ]
                    ]

                -- numbers
                , div [ class "flex circle-indicators" ]
                    [ button [ selected True ] [ text "1" ]
                    , button [ selected False ] [ text "2" ]
                    , button [ selected False ] [ text "3" ]
                    ]
                ]
            ]
        ]
