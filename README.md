# hpack-template

A stack template for an executable, libary, and test-suite using `hpack`'s
`package.yaml`.

The test-suite is built using `tasty` and uses `HUnit` for unit tests and
`hedgehog` for property tests. A travis build configuration is included using
stack's simple example file.

To start a new project with this template, run:

```
stack new <project-name> https://raw.githubusercontent.com/prikhi/hpack-template/master/hpack.hsfiles
```

The `hpack-lib.hsfiles` is similar but geared towards libraries instead of
applications. It does not include an executable section, modifies the compiler
flags to support GHC versions under 8.0, lower the bounds of the `base`
package, includes the `base-compat-batteries` package to reduce the CPP
macros necesary for supporting multiple GHC versions, uses a travis
configuration that tests multiple OSes and GHC versions.

```
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
