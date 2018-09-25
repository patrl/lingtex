# Lingtex

Custom LaTeX classes for linguists with a Syn-Sem bias (WIP).

## Paper, handout, and abstract

### Font prerequisites

Everything except for STIX2 should be available on, e.g., a recent version of
OSX as a system font.

- Main font: [Minion Pro](https://typekit.com/fonts/minion)
- Sans serif: [Myriad Pro](https://typekit.com/fonts/myriad)
- Math: [STIX2](https://sourceforge.net/projects/stixfonts/)
- Monospace: [San Francisco Mono](https://github.com/ZulwiyozaPutra/SF-Mono-Font)

### Details

All custom classes use the KOMA-Script `scrartcl` class as a base-class. The
classes are set-up with the expectation that documents will be compiled via
`xelatex`. Math formulae can be entered directly as unicode (although LaTeX math
commands should work too), e.g.:

``` tex
\(λ P . λ Q . P ∩ Q ≠ ∅\)
```


#### `ling-abstract`

To satisfy the most common
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
