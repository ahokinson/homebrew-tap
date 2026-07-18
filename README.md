# ahokinson/tap

My personal [Homebrew](https://brew.sh) tap.

```sh
brew tap ahokinson/tap
```

## Why this tap?

Several of these casks also exist in `homebrew/cask`; the copies here
`conflicts_with` their upstream counterparts on purpose. Maintaining a
separate tap makes it possible to:

- **Curate.** One place for a specific set of tools, installable by short
  name once the tap is added.
- **Target Apple Silicon.** Everything is trimmed to arm64 macOS.
- **Stay in control.** Each cask's `desc`, `livecheck`, `zap`, and
  dependencies live here rather than under `homebrew/cask` policy.
- **Own the supply chain.** Pinning `version` and `sha256` means every bump
  is reviewed and vetted before it reaches any machine.

## Formulae

| Name                                                | Description                                                |
| --------------------------------------------------- | ---------------------------------------------------------- |
| [bloom](https://github.com/ahokinson/bloom)         | Define your tmux layouts once, then spin them up on demand |
| [clipleaks](https://github.com/ahokinson/clipleaks) | Guards your clipboard and warns before you paste a secret  |

## Casks

| Name                                                 | Description                                                     |
| ---------------------------------------------------- | --------------------------------------------------------------- |
| [claude-code](https://www.anthropic.com/claude-code) | Anthropic's agentic coding assistant for the terminal           |
| [codex](https://openai.com/codex/)                   | OpenAI's agentic coding assistant for the terminal              |
| [cupcake](https://cupcake.eqtylab.io/)               | Native policy enforcement layer for AI coding agents (OPA/Rego) |
| [zen](https://zen-browser.app/)                      | Customizable web browser built on Firefox                       |

## Install

```sh
brew install clipleaks       # formula
brew install --cask zen      # cask
```

Once the tap is added you can install by name; otherwise prefix with
`ahokinson/tap/`.
