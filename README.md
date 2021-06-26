# chordpad.ahk and arrowpad.ahk

chordpad.ahk and arrowpad.ahk are [AutoHotkey](autohotkey.com) scripts that [chord](https://en.wikipedia.org/wiki/Chorded_keyboard) a 15 key numberpad into your 1 to 4 keys or arrow keys respectively. You will need a keyboard that can register all 4 of those keys being pressed at the same time.

| Input (chordpad) | Input (arrowpad) | Output    |
| ---------------- | ---------------- | --------- |
| 1,2,3,4          | ←,↑,↓,→          | Numlock   |
| 1,2              | ←,↓              | 1 / End   |
| 2                | ↓                | 2 / Down  |
| 2,4              | ↓,→              | 3 / PgDn  |
| 1                | ←                | 4 / Left  |
| 2,3              | ↑,↓              | 5         |
| 4                | →                | 6 / Right |
| 1,3              | ←,↑              | 7 / Home  |
| 3                | ↑                | 8 / Up    |
| 3,4              | ↑,→              | 9 / PgUp  |
| 1,2,3            | ←,↑,↓            | 0 / Ins   |
| 2,3,4            | ↑,↓,→            | . / Del   |
| 1,3,4            | ←,↑,→            | -         |
| 1,2,4            | ←,↓,→            | ,         |
| 1,4              | ←,→              | Enter     |

Output is generate on key up, so while it should be 100% accurate, there is no key repeat.
