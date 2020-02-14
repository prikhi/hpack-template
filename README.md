# hpack-template

A stack template for an executable, libary, and test-suite using `hpack`'s
`package.yaml`.

The test-suite is built using `tasty` and uses `HUnit` for unit tests and
`hedgehog` for property tests.

To start a new project with this template, run `stack new <project-name>
prikhi/hpack-template`.


## Generation

The `hpack.hsfiles` is generated with
[stack-templatizer](https://github.com/prikhi/stack-templatizer) using the
files in the `hpack` directory.

Install the templatizer with `stack install --resolver nightly
stack-templatizer`, then run `stack-templatizer hpack` to regenerate the
`hpack.hsfiles`.


## LICENSE

BSD-3
