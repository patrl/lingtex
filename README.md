# Lingtex (WIP)

Custom LaTeX classes for linguists with a Syn-Sem bias.

## Usage

You can install this class by manually linking the `.cls` and `.def` files to an
appropriate location in your `TEXMFHOME` directory (find where this is by
running `kpsewhich -var-value=TEXMFHOME` in the terminal). Alternatively, just
include the `.def` files and whichever `.cls` files you want to use in the same
directory as your `.tex` file.

## TODO

- Allow single markdown source to be compiled as both `ling-handout` and
  `ling-slides`. This should be straightforward, since `ling-handout` already
  uses `beamerarticle`.
- Add example of `ling-sidenotes` usage.
- Add options for users of `pdflatex`.

## Paper, handout, and abstract

### Font prerequisites

Everything except for STIX2 should be available on, e.g., a recent version of
OSX as a system font.

- Main font: [Minion Pro](https://typekit.com/fonts/minion)
- Sans serif: [Cronos Pro](https://typekit.com/fonts/cronos)
- Math: Currently uses a ramshackle combination of Libertinus Math, Minion,
  Cronos, San Francisco, and [STIX2](https://sourceforge.net/projects/stixfonts/).
- Monospace: [San Francisco Mono](https://github.com/ZulwiyozaPutra/SF-Mono-Font)

### Details

The
classes are set-up with the expectation that documents will be compiled via
`xelatex`. Math formulae can be entered directly as unicode (although LaTeX math
commands should work too), e.g.:

``` tex
\(λ P . λ Q . P ∩ Q ≠ ∅\)
```

If you use emacs, there are multiple possibilities for entering unicode symbols
efficiently. I use the [Agda input
method](https://github.com/agda/agda/blob/master/src/data/emacs-mode/agda-input.el)
distributed with the main agda release. The [company
math](https://github.com/vspinu/company-math) unicode backend also works well,
when set up to work with xelatex and unicode math, as described [here](https://www.emacswiki.org/emacs/company-math).

#### `ling-paper`

Uses `scrartcl` as the base class. Watermarked with the current git revision via
`gitinfo2`. This requires a bit of a manual intervention, so see the [gitinfo2
documentation](http://mirrors.ctan.org/macros/latex/contrib/gitinfo2/gitinfo2.pdf)
for information about how to set up the relevant hooks.

### `ling-handout`

Uses `scrartcl` as the base class.

#### `ling-abstract`

Uses `scrartcl` as a base class. To satisfy the most common
abstract requirements, margins are set to 1 inch, and font size to 12pt.
Additional modifications, such as custom section headers, title, and
bibliography all serve to maximize space.
 
## Slides

### Font prerequisites

- Main font: [Fira Sans](https://fonts.google.com/specimen/Fira+Sans)
- Math: [Fira Math](https://github.com/Stone-Zeng/FiraMath)
- Monospace: [Fira Mono](https://fonts.google.com/specimen/Fira+Mono)

### Details

Based on the now ubiquitous [metropolis beamer
theme](https://github.com/matze/mtheme) but with the excellent [owl color
theme](https://github.com/rchurchley/beamercolortheme-owl) to stand out from the
crowd. The light variant of the theme is enabled by default.
