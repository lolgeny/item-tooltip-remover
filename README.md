# Item tooltip remover
Simple shader that removes tooltips on specific items, for custom guis

# How does it work?
Idea by [@McTsts](https://github.com/McTsts). The shader detects items with a really big lore
- so big that they take up the whole vertical space of the screen, as well as being pushed to the left.
This shouldn't conflict with any other items with lore, even if you have many lore lines.

# Features
- Works in all GUI scales, including 1
- Works with F3+H, and you don't need to rename your item or `HideFlags`, they're pushed off the screen

# How to use
Simply give yourself an item with the following `display.Lore`:
```
['""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','""','"                                                                                                                                                                                                                                                                                                                                                                                                                           "']
```