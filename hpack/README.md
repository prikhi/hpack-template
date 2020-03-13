# {{name}}

[![{{name}} Build Status](https://travis-ci.org/{{github-username}}{{^github-username}}githubuser{{/github-username}}/{{name}}.svg?branch=master)](https://travis-ci.org/{{github-username}}{{^github-username}}githubuser{{/github-username}}/{{name}})


Describe your project here.


## Build

You can build the project with stack:

```
stack build
```

For development, you can enable fast builds with file-watching,
documentation-building, & test-running:

```
stack test --haddock --fast --file-watch --pedantic
```

To build & open the documentation, run

```
stack haddock --open {{name}}
```


## LICENSE

BSD-3
