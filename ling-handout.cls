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
\setkomafont{disposition}{\normalcolor\sffamily\addfontfeature{Letters=Uppercase,Kerning=Uppercase}}
\setkomafont{author}{\normalcolor\sffamily}
\setkomafont{date}{\normalcolor\sffamily}

% font setup
% TODO conditionalise on xe/luatex
\RequirePackage{microtype}
\RequirePackage{fontspec}
\PassOptionsToPackage{math-style=ISO}{unicode-math}
\RequirePackage{unicode-math}
\defaultfontfeatures{Scale=MatchLowercase}
\setmainfont{Minion Pro}
\setsansfont{Myriad Pro}
\setmathfont{STIX Two Math}
\setmonofont{SF Mono}

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
