# NameHub

Universal loader dispatcher for the NameHub Roblox script hub.

This repo holds one small file ([loader.lua](./loader.lua)) that detects the
current Roblox game via `game.PlaceId` and loads the matching framework. The
NameHub Discord bot hands users this two-line snippet:

```lua
key = '<your key>'
loadstring(game:HttpGet('https://raw.githubusercontent.com/kyronshaw912-collab/NameHub/main/loader.lua'))()
```

## Supported games

| PlaceId       | Game                          | Source repo                                                                               |
| ------------- | ----------------------------- | ----------------------------------------------------------------------------------------- |
| `228181322`   | Dinosaur Simulator            | [DinoFramework](https://github.com/kyronshaw912-collab/DinoFramework)                     |
| `161541423`   | Dinosaur Simulator (legacy)   | [DinoFramework](https://github.com/kyronshaw912-collab/DinoFramework)                     |
| `11653088948` | Jurassic Blocky               | [JurassicBlockyFramework](https://github.com/kyronshaw912-collab/JurassicBlockyFramework) |

If you launch the loader inside a game that is not in the table above, it
errors out with a clear message instead of running the wrong framework.
