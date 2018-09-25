\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-paper}[2018/09/24 ling-paper]

% load the base class
\LoadClassWithOptions{scrartcl}

\input{ling-common.def}

% use sans serif for headings
\setkomafont{disposition}{\normalcolor\headingfont\addfontfeature{Letters=Uppercase,Kerning=Uppercase}}
\setkomafont{author}{\normalcolor\headingfont}
\setkomafont{date}{\normalcolor\headingfont}

% font setup
% TODO conditionalise on xe/luatex
\RequirePackage{microtype}
\RequirePackage{fontspec}
\PassOptionsToPackage{math-style=ISO}{unicode-math}
\defaultfontfeatures{Scale=MatchLowercase}
\setmainfont{Minion Pro}
\setsansfont{Myriad Pro}
\RequirePackage{unicode-math}
\setmathfont{STIX Two Math}
\setmonofont{SF Mono}
\newfontfamily\headingfont[]{Myriad Pro Light}

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

\input{ling-examples.def}
