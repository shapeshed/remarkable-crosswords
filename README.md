# Remarkable Crosswords

Get crosswords freshly delivered to your [Remarkable][1] every morning.

Currently supported

* [The Guardian Cryptic Crossword][2]
* [The Guardian Quick Crossword][3]

## Prerequisites

* [rmapi][5]
* [texlive-core][6] which provides `pdfcrop`
* [ghostcript][7]

## Installation

* Copy `remarkable-crossword.sh` to `/usr/local/bin/` and make it executable.
* Install the systemd service and timer scripts.

## TODO

* Package for Arch User Repository

[1]: https://remarkable.com/
[2]: https://www.theguardian.com/crosswords/series/cryptic
[3]: https://www.theguardian.com/crosswords/series/quick
[4]: https://github.com/GjjvdBurg/paper2remarkable
[5]: https://github.com/juruen/rmapi
[6]: https://archlinux.org/packages/extra/any/texlive-core/
[7]: https://archlinux.org/packages/extra/x86_64/ghostscript/
