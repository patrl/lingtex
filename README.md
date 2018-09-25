# Lingtex

Custom LaTeX classes for linguists with a Syn-Sem bias (WIP).

## Paper, handout, and abstract

### Font prerequisites

Everything except for STIX2 should be available on, e.g., a recent version of
OSX as a system font.

<dl>
  <dt>Serif</dt>
  <dd>
  [Minion Pro](https://typekit.com/fonts/minion)
  </dd>
  <dt>Sans Serif</dt>
  <dd>
  [Myriad Pro](https://typekit.com/fonts/myriad)
  </dd>
  <dt>Math</dt>
  <dd>
  [STIX2](https://sourceforge.net/projects/stixfonts/)
  </dd>
  <dt>Monospace</dt>
  <dd>
  [San Francisco Mono](https://github.com/ZulwiyozaPutra/SF-Mono-Font)
  </dd>
</dl>

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

<dl>
  <dt>Sans Serif</dt>
  <dd>
  [Fira Sans](https://fonts.google.com/specimen/Fira+Sans)
  </dd>
  <dt>Math</dt>
  <dd>
  [Fira Math](https://github.com/Stone-Zeng/FiraMath)
  </dd>
  <dt>Monospace</dt>
  <dd>
  [Fira Mono](https://fonts.google.com/specimen/Fira+Mono)
  </dd>
</dl>

### Details

Based on the now ubiquitous [metropolis beamer
theme](https://github.com/matze/mtheme) but with the excellent [owl color
theme](https://github.com/rchurchley/beamercolortheme-owl) to stand out from the
crowd. The light variant of the theme is enabled by default.
