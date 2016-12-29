module App.Messages exposing (Msg(..))

import Http
import Keyboard exposing (..)
import App.Types exposing (Session)
import Components.SigninModal
import Components.ProfileModal
import Components.Timeline


type Msg
    = NoOp
    | SessionFetched (Result Http.Error Session)
    | KeyDown KeyCode
    | KeyUp KeyCode
    | OpenSigninModal
    | SigninModalMsg Components.SigninModal.Msg
    | OpenProfileModal
    | ProfileModalMsg Components.ProfileModal.Msg
    | TimelineMsg Components.Timeline.Msg