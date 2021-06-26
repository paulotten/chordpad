#SingleInstance Force

numlock := true

pressed := false
left := false
down := false
up := false
right := false

Left::
    pressed := true
    left := true
Return
Left UP::
    Gosub KeyUp
Return

Down::
    pressed := true
    down := true
Return
Down UP::
    Gosub KeyUp
Return

Up::
    pressed := true
    up := true
Return
Up UP::
    Gosub KeyUp
Return

Right::
    pressed := true
    right := true
Return
Right UP::
    Gosub KeyUp
Return

KeyUp:
    if pressed {
        pressed := false
        ToolTip ; clear
        
        if left and down and !up and !right {
            if numlock {
                Send 1
            } else {
                Send {End}
            }
        } else if !left and down and !up and !right {
            if numlock {
                Send 2
            } else {
                Send {Down}
            }
        } else if !left and down and !up and right {
            if numlock {
                Send 3
            } else {
                Send {PgDn}
            }
        } else if left and !down and !up and !right {
            if numlock {
                Send 4
            } else {
                Send {Left}
            }
        } else if !left and down and up and !right {
            Send 5
        } else if !left and !down and !up and right {
            if numlock {
                Send 6
            } else {
                Send {Right}
            }
        } else if left and !down and up and !right {
            if numlock {
                Send 7
            } else {
                Send {Home}
            }
        } else if !left and !down and up and !right {
            if numlock {
                Send 8
            } else {
                Send {Up}
            }
        } else if !left and !down and up and right {
            if numlock {
                Send 9
            } else {
                Send {PgUp}
            }
        } else if left and down and up and !right {
            if numlock {
                Send 0
            } else {
                Send {Ins}
            }
        } else if !left and down and up and right {
            if numlock {
                Send .
            } else {
                Send {Del}
            }
        } else if left and down and up and right {
            if numlock {
                ToolTip Numlock off
            } else {
                ToolTip Numlock on
            }
            numlock := !numlock
        } else if left and !down and up and right {
            Send -
        } else if left and down and !up and right {
            Send {+}
        } else if left and !down and !up and right {
            Send {Enter}
        }
    }
    
    left := false
    down := false
    up := false
    right := false
Return
