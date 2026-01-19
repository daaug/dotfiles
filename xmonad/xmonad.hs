import XMonad
import qualified Data.Map as M
import Graphics.X11.ExtraTypes.XF86
import XMonad.Util.SpawnOnce
import XMonad.Util.EZConfig (additionalKeysP, remapKeysP, removeKeysP)
-- bar
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
-- floating window
import qualified XMonad.StackSet as W

main :: IO ()
main = do 
    xmonad $ ewmhFullscreen $ ewmh $ docks def
        { modMask       = mod4Mask
        , keys          = myKeys
		, layoutHook	= avoidStruts $ layoutHook def -- avoidStruts == tells layouts to leave space for them
        , startupHook   = myStartupHook <+> startupHook def
        }
        `removeKeysP` 
        [ ("M-<Space>")
        ]
        `remapKeysP`
        [ ("M-S-e", "M-S-q")
        , ("M-S-q", "M-S-c")
        ]
        `additionalKeysP`
        [ ("M-p", spawn "dmenu_run -b -l 20 -nb black -nf white -sb red -sf white")
        , ("M-<Return>", spawn "urxvt")
        , ("M-x", spawn "xfce4-screenshooter")
        , ("M-S-<Space>", withFocused toggleFloat)
        , ("M-m", sendMessage $ JumpToLayout "Full")
        , ("M-S-m", sendMessage NextLayout)
        ]

myStartupHook :: X ()
myStartupHook = do
    spawnOnce "polybar -c /home/daniel/.config/polybar/config.ini"

myKeys :: XConfig Layout -> M.Map (KeyMask, KeySym) (X ())
myKeys conf = M.union (keys def conf) (M.fromList
    [ ((0, xF86XK_AudioRaiseVolume), spawn "amixer set Master 5%+")
    , ((0, xF86XK_AudioLowerVolume), spawn "amixer set Master 5%-")
    , ((0, xF86XK_AudioMute),        spawn "amixer set Master toggle")
    , ((0, xF86XK_MonBrightnessUp),   spawn "brightnessctl set +10%")
    , ((0, xF86XK_MonBrightnessDown), spawn "brightnessctl set 10%-")
    ])

toggleFloat :: Window -> X ()
toggleFloat w =
    windows (\s ->
        if M.member w (W.floating s)
            then W.sink w s
            else W.float w (W.RationalRect 0.1 0.1 0.8 0.8) s
    )

