#SingleInstance Force

numlock := true

pressed := false
left := false
down := false
up := false
right := false

1::
    pressed := true
    left := true
Return
1 UP::
    Gosub KeyUp
Return

2::
    pressed := true
    down := true
Return
2 UP::
    Gosub KeyUp
Return

3::
    pressed := true
    up := true
Return
3 UP::
    Gosub KeyUp
Return

4::
    pressed := true
    right := true
Return
4 UP::
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
