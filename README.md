# About oracles-rando-disasm

This fork was created in order to modify the game to allow an easier time with my own randomizer project. This repo is not necessary in order to use my randomizer, it is simply easier for me to make the mods needed in assembly. The randomizer program will accept a vanilla ROM and patch it to include these mods.

Currently, the modifications made include:
* Replacing Essences and other freestanding items with chests, to allow an easier time randomizing them and their slots
* Making it possible for Essences to be placed in chests, rather than having to be freestanding


# Original README:

# About oracles-disasm

This is a complete, documented disassembly of Oracle of Ages and Seasons for the Gameboy
Color. When combined with [LynnaLab](https://github.com/drenn1/lynnalab), it is a level
editing suite.

[See the wiki](https://wiki.zeldahacking.net/oracle/Setting_up_ages-disasm) for detailed
setup instructions.


# Required tools to build

* Python 3
* [WLA-DX](https://github.com/vhelin/wla-dx) v9.11
** For Seasons to build properly, use [this branch](https://github.com/Drenn1/wla-dx/tree/emptyfill-banknumber). Otherwise, empty space won't be filled with the correct values (but the game will still work).
* [Cygwin](http://cygwin.com/install.html) (Only required for windows users)


# Build instructions

Once the dependencies are installed, running `make` will build both games. To build
a specific game, run `make ages` or `make seasons`. (Don't try "make ages seasons"; make
will try to build them in parallel which doesn't currently work).

By default, the rom is built with precompressed assets, so that an exact copy of the
original game is produced. In order to edit text, graphics, and other things,
switch to the "hack-base" branch. Alternatively, run the "./swapbuild.sh" script
in the root of the repository. This will switch the build mode to "modifiable"
instead of "precompressed".

There are 4 build directories (for ages and seasons, vanilla or editable) which are
symlinked to the "build" directory depending on which game is built for which mode.

[See the wiki](https://wiki.zeldahacking.net/oracle/Setting_up_ages-disasm) for detailed
setup instructions.


## Tools needed to generate documentation

Type "make doc" to generate documentation, which may or may not work at this point.

* Perl
* Doxygen
* Graphviz for call graphs


# Graphics files

(Note: Graphics editing will only work if you're on the "hack-base" branch or
have disabled the use of precompressed graphics)

Graphics are stored as 4-color indexed PNG files. Other formats (RGB) are
supported, as long as you stick to using the original 4 colors. But the indexed
format works particularly well with editors such as Aseprite, which show you the
4-color palette available to you.

Some graphics have a corresponding `.properties` file (ie. `spr_link.png` has
`spr_link.properties`). These are YAML files which specify certain properties
about how they should be converted from PNG format to BIN (raw) format, and
vice-versa.

The following parameters are accepted in `.properties` files:

* width (int): Width of the resulting PNG file, in tiles. Only affects .BIN ->
  .PNG conversion.
* interleave (bool): Whether to treat the image with an 8x16 layout instead of
  an 8x8 layout (mainly for sprites).
* invert (bool): Whether to invert the color order of the PNG palettes. When
  "false", the order is light-to-dark (white = color 0). When "true", the order
  is dark-to-light (black = color 0).
* tile\_padding (int): Number of tiles of padding at the end of the image. This
  many tiles will be truncated before conversion to `.BIN` format, or this many
  tiles will be added during conversion to .PNG format.
* format (string): Set this to "1bpp" for 1 bit-per-pixel files (only the font
  uses this).

Sprite graphics files (files beginning with `spr_` instead of `gfx_`) are
assumed to have the properties `invert: true` and `interleave: true`. However,
these can be overridden by creating a `.properties` file.

If you wish to edit the files in raw .BIN format with an editor such as YY-CHR,
run the following command from the root of the repository (using `spr_link.png`
as an example):

```
python3 tools/gfx/gfx.py auto gfx/common/spr_link.png
```

This will create `gfx/common/spr_link.bin`, a raw 2bpp gameboy image. However
you shouldn't have both a `.bin` and `.png` file with the same name; this will
confuse the Makefile rules. You can simply remove `gfx/spr_link.png`, in which
case the disassembly will read from `gfx/spr_link.bin` instead. Or, you may
convert it back to PNG when you're done, then delete the `.bin` file. The
following command will convert the `.bin` file back to `.png`:

```
python3 tools/gfx/gfx.py png gfx/common/spr_link.bin
```

Both of these commands will check the `.properties` file, if it exists, to
decode and encode the image properly.

# Disclaimer

The reverse-engineered code and assets in this repository belong largely to
Capcom and Nintendo. While I don't claim to have any legal standing to dictate
how it may be used, I strongly disavow its use for any commercial purposes. The
purpose of this project is to research the inner workings of the Zelda Oracle
games and facilitate the creation of non-commercial ROM hacks.

Scripts which do not contain any Nintendo/Capcom code (ie. python scripts in the
"tools/" folder) may be considered "public domain" unless stated otherwise.
