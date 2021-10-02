# Item tooltip remover
Simple shader that removes tooltips on specific items, for custom guis

# How does it work?
Idea by [@McTsts](https://github.com/McTsts). The shader detects items with a really big lore
\- so big that they take up the whole vertical space of the screen.

# Features
- Works in all GUI scales, including 1
- Works with F3+H, and you don't need to rename your item or `HideFlags`, they're pushed off the screen

# Incompatibilities
- Unfortunately, any items that also go to the edge of the screen through a long lore break.
The bars on the edge seem to be rendered separately, causing many problems.

# Long compat
If you have an item with (fairly) long lore that's breaking, you can uncomment line 3 in `assets/minecraft/shaders/core/position_color.vsh`.
This will allow much longer lores to work but there will be a barely visible small dark blue line at the bottom of the screen when hovering over a tooltip removed item.

# How to use
Simply give yourself an item with the following `display.Lore` (copy the whole thing, there are a lot of spaces):
```
['""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','"                                                                                                                                                                                                                                                                                                                                                                                                                           "']
```

# Gallery
## Item with no tooltip
![image](https://user-images.githubusercontent.com/30565442/135232958-4e555a8a-fbdf-4e65-bc13-3e82cad46ccb.png)
