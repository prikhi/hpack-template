# hpack-template

A stack template for an executable, libary, and test-suite using `hpack`'s
`package.yaml`.

The test-suite is built using `tasty` and uses `HUnit` for unit tests and
`hedgehog` for property tests. GitHub Actions are included to build the project
with the latest Stackage LTS, Stackage Nightly, & the last 3 version of GHC.

To start a new project with this template, run:

```sh
stack new <project-name> https://raw.githubusercontent.com/prikhi/hpack-template/master/hpack.hsfiles
```

The `hpack-lib.hsfiles` is similar but geared towards libraries instead of
applications. It does not include an executable section, modifies the compiler
flags to support GHC versions under 8.0, lower the bounds of the `base`
package, includes the `base-compat-batteries` package to reduce the CPP
macros necesary for supporting multiple GHC versions, & uses GitHub Actions to
test multiple Stackage LTSes and GHC versions.

```sh
stack new <project-name> https://raw.githubusercontent.com/prikhi/hpack-template/master/hpack-lib.hsfiles
```


## Generation

The `*.hsfiles` are generated with
[stack-templatizer](https://github.com/prikhi/stack-templatizer) using the
files in the `hpack` & `hpack-lib` directories.

Install the templatizer with `stack install --resolver nightly
stack-templatizer`, then run `stack-templatizer hpack` & `stack-templatizer
hpack-lib` to regenerate the template files.


## LICENSE

BSD-3
