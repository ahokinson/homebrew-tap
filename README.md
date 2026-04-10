# ahokinson/tap

A collection of developer tools, installable via Homebrew.

| Formula | Description |
|---------|-------------|
| [bloom](https://github.com/ahokinson/bloom) | Grow tmux sessions from a single config file |
| [clipleaks](https://github.com/ahokinson/clipleaks) | Catches secrets on your clipboard before they escape |
| [jitters](https://github.com/ahokinson/jitters) | Keep tabs on your AI coding assistant spend |
| [terroir](https://github.com/ahokinson/terroir) | Cultivate dev work across branches, tickets, and editors |

| Cask | Description |
|------|-------------|
| [claude-code](https://www.anthropic.com/claude-code) | Terminal-based AI coding assistant (latest channel) |

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
