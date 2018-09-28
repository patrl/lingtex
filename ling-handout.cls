\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-handout}[2018/09/24 ling-handout]

% load the base class
\LoadClassWithOptions{scrartcl}

\input{ling-links.def}
\input{ling-common.def}

\PassOptionsToPackage{noxcolor}{beamerarticle}
\RequirePackage{beamerarticle}
% \usebeamercolortheme[snowy]{owl}

% use sans serif for headings
\setkomafont{disposition}{\normalcolor\sffamily}
\setkomafont{author}{\normalcolor\sffamily}
\setkomafont{date}{\normalcolor\sffamily}

% font setup
% TODO conditionalise on xe/luatex

\ifengineTF{\xetexengine || \luatexengine}%
{
  \RequirePackage{microtype}
  \RequirePackage{fontspec}
  \PassOptionsToPackage{math-style=ISO}{unicode-math}
  \RequirePackage{unicode-math}
  \defaultfontfeatures{Scale=MatchLowercase}
  \setmainfont{Minion Pro}
  \setsansfont{Myriad Pro}
  \setmathfont{STIX Two Math}
  \setmonofont{SF Mono}
}
{
  \PassOptionsToPackage{lining,semibold}{libertine}
  \RequirePackage{libertine} % a bit lighter than Times--no osf in math
  \PassOptionsToPackage{T1}{fontenc}
  \RequirePackage{fontenc} % best for Western European languages
  \RequirePackage{textcomp} % required to get special symbols
  \PassOptionsToPackage{varqu,varl}{inconsolata}
  \RequirePackage{inconsolata}% a typewriter font must be defined
  \RequirePackage{amsthm}% must be loaded before newtxmath
  \PassOptionsToPackage{libertine,vvarbb}{newtxmath}
  \RequirePackage{newtxmath}
  \PassOptionsToPackage{scr=rsfso}{mathalfa}
  \RequirePackage{mathalfa}
  \RequirePackage{bm}% load after all math to give access to bold math
  % After loading math package, switch to osf in text.
  \useosf % for osf in normal tex
}

% flush title, author and date to the left:
\RequirePackage{xpatch}
\makeatletter
\xpatchcmd{\@maketitle}{\begin{center}}{\begin{flushleft}}{}{}
\xpatchcmd{\@maketitle}{\end{center}}{\end{flushleft}}{}{}
\xpatchcmd{\@maketitle}{\begin{tabular}[t]{c}}{\begin{tabular}[t]{@{}l@{}}}{}{}
\makeatother
\renewcommand*\and{%
  \end{tabular}\\
  \begin{tabular}[t]{@{}l@{}}%
}%

% \RequirePackage{beamerarticle}

% common code for example sentences (must be loaded late)
\input{ling-examples.def}

\usepackage{minted}
