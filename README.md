# ahokinson/tap

A collection of developer tools, installable via Homebrew.

| Formula | Description |
|---------|-------------|
| [bloom](https://github.com/ahokinson/bloom) | Grow tmux sessions from a single config file |
| [clipleaks](https://github.com/ahokinson/clipleaks) | Catches secrets on your clipboard before they escape |

| Cask | Description |
|------|-------------|
| [claude-code](https://www.anthropic.com/claude-code) | Terminal-based AI coding assistant (latest channel) |
| [zen](https://zen-browser.app/) | Gecko based web browser |

## Install

```
brew tap ahokinson/tap
brew install <formula>
brew install --cask ahokinson/tap/claude-code
```
Or in a `Brewfile`:

```ruby
tap "ahokinson/tap"
brew "<formula>"
cask "claude-code", args: { tap: "ahokinson/tap" }
```
