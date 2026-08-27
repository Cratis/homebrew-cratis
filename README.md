# Cratis Homebrew Tap

Homebrew tap for [Cratis](https://www.cratis.io) command-line tools.

## Install

```shell
brew tap cratis/cratis
brew install cratis
```

To upgrade later:

```shell
brew upgrade cratis
```

## What you get

The `cratis` CLI is the terminal surface for [Chronicle](https://github.com/Cratis/Chronicle), the open-source (MIT) event-sourcing database and runtime from Cratis. Use it to inspect and diagnose Chronicle event stores — events, observers, projections, read models, and failed partitions — straight from your terminal.

- CLI source and issues: [Cratis/cli](https://github.com/Cratis/cli)
- CLI documentation: [cratis.io/cli](https://www.cratis.io/cli/)
- The Cratis platform: [cratis.io](https://www.cratis.io)
- Community: [Discord](https://discord.gg/kt4AMpV8WV)

## The Cratis ecosystem

This tap is part of [Cratis](https://www.cratis.io) — free, MIT-licensed tools for building event-sourced and CQRS applications.

- **[Chronicle](https://github.com/Cratis/Chronicle)** — event-sourcing database and runtime with pluggable storage and language-agnostic gRPC contracts. [Docs](https://www.cratis.io/chronicle/)
- **[Arc](https://github.com/Cratis/Arc)** — opinionated CQRS framework for ASP.NET Core. Works without event sourcing. [Docs](https://www.cratis.io/arc/)
- **[CLI](https://github.com/Cratis/cli) + Workbench** — inspect and diagnose Chronicle from the terminal or the browser. [Docs](https://www.cratis.io/cli/)

## License

The formula in this tap is [MIT licensed](./LICENSE). The `cratis` CLI it installs is also MIT licensed — see [Cratis/cli](https://github.com/Cratis/cli).
