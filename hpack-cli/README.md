# {{name}}

[![{{name}} Build Status](https://github.com/{{github-username}}{{^github-username}}githubuser{{/github-username}}/{{name}}/actions/workflows/main.yml/badge.svg)](https://github.com/{{github-username}}{{^github-username}}githubuser{{/github-username}}/{{name}}/actions/workflows/main.yml)


Describe your project here.

Requires [`stack`][get-stack]:

```sh
stack run
```

[get-stack]: https://docs.haskellstack.org/en/stable/README/


## Install

You can install the CLI exe by running `stack install`. This lets you call the
executable directly instead of through stack:

```sh
stack install
export PATH="${HOME}/.local/bin/:${PATH}"
{{name}}
```


## Build

You can build the project with stack:

```sh
stack build
```

For development, you can enable fast builds with file-watching,
documentation-building, & test-running:

```sh
stack test --haddock --fast --file-watch --pedantic
```

To build & open the documentation, run:

```sh
stack haddock --open {{name}}
```


## LICENSE

BSD-3
