**Dotfiles**
------------
Dotfiles of river with my user-scripts + functions inside river `init` file to easily set rules.

## Features
* Keychords using a function inside [init](.config/river/init)
* Easy rules `float`, `dimensions` and `positions` with centering available
* Start programs on specific tag
* EWW integration
* Apply the same configurations to every mouse pointer
* Get window ID and TITLE with [riverprop](.config/river/scripts/riverprop)
* Youtube feed with fzf [ytrss](.scripts/ytrss)
* Mount KDEConnect device without gui with [kcmount](.scripts/kcmount)
* Quran radio (Cairo) [cairoQuran](.scripts/bar/cairoQuran)
* Prayer times in EWW [prayerTime](.scripts/bar/prayerTime)
* Calendar widget for both gregorian and hijri (soon) [cal](.scripts/bar/cal)
* Pomodoro timer [pomo](.scripts/bar/pomo)
* Menus for Fonts, Nerd icons, Icon theme's icons
* Screenshots and screen recording with [shotcopy](.scripts/shotcopy)
* Bookmarks menu [Bookmarks](.scripts/bookmark)
* Notification upon headphone plug/unplug [detect_headphone](.scripts/detect_headphone)
* [Script manager](.scripts/sman) with configuration in [text format](.scripts/data/sman.list)
* Launch firefox profiles with [browser](.scripts/browser)

|||
|-|-|
| OS             | [Arch Linux](https://archlinux.org) |
| Window Manager | [River](https://codeberg.org/river/river) |
| Bar            | [EWW](https://github.com/elkowar/eww) |
| Color Scheme   | [gruvbox-material-medium](https://github.com/sainnhe/gruvbox-material) |
| App Launcher   | [konsole (floating)](.scripts/extra/terman) + [fzf](.scripts/sman) |


## Credits
* [riverwm](https://codeberg.org/river/river) made by [Isaac Freund](https://codeberg.org/ifreund)
* [gruvbox material theme](https://github.com/sainnhe/gruvbox-material) made by [Sainnhe](https://github.com/sainnhe)
* [wideriver](https://github.com/alex-courtis/wideriver) a feature-rich layout manager for river made by [Alex Courtis](https://github.com/alex-courtis)
* [EWW](https://github.com/elkowar/eww) made by [Elkowar](https://github.com/elkowar/)
* [ristate](https://gitlab.com/snakedye/ristate/) which made EWW integration into river possible, by [Bryan](https://gitlab.com/snakedye/)
* [lswt](https://git.sr.ht/~leon_plickat/lswt) made by [Leon Plickat](https://git.sr.ht/~leon_plickat)

## Issues
As of now, this issue that bugs me hasn't been fixed.

[Issue #982](https://codeberg.org/river/river/issues/982) When you change focus between floating windows using the mouse while `riverctl focus-follows-cursor "always"` and you move the mouse cursor outside the floating window boundary, the other one you got into becomes on top hiding the previous window behind it.

You can avoid that with river keybindings to refocus the previous window, but that's counter-intuitive in my opinion.

## Quirks
River doesn't provide eye-candy effects nor the developer intends to [Issue #81](https://codeberg.org/river/river/issues/81). It just happened that I used a hack with EWW to render it with rounded corners (used `rgba(40,40,40,0.99)` instead of hex)

## Support
[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.me/warrior0x7)
[![Liberapay](https://liberapay.com/assets/widgets/donate.svg)](https://liberapay.com/Warrior0x7/donate)
