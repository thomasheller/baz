# baz

Build and zip releases of Go programs.

Simply run `baz.sh` in the directory of the Go program you would like
to build and create releases for.

The script uses [gox](https://github.com/mitchellh/gox) to build the
program for all platforms and architectures.

It will create a `builds` sub-directory containing Zip archives (for
Windows builds) and Tarballs (for Unix-like builds) for all builds.

If files named `README`, `README.md` and/or `LICENSE` are present in
your program's directory, `baz.sh` will add them to the archives.

Don't keep any other `*.zip` or `*.tar.gz` files in the `builds`
directory -- the script would delete them.

---

I should turn this into a Go program, actually.

