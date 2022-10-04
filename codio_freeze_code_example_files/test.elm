-- Press a button to generate a random number between 1 and 6.
--
-- Read how it works:
--   https://guide.elm-lang.org/effects/random.html
--
-- FREEZE CODE BEGIN
import Browser
import Html exposing (..)
import Html.Events exposing (..)
import Random

-- FREEZE CODE END

-- MAIN


main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }



-- MODEL


type alias Model =
  { dieFace : Int
  }


init : () -> (Model, Cmd Msg)
init _ =
  ( Model 1
  , Cmd.none
  )
