\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-paper}[2018/09/24 ling-paper]

% load the base class
\LoadClassWithOptions{scrartcl}

\input{ling-common.def}
\input{ling-links.def}

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

\setmainfont[%
    UprightFeatures={
        SizeFeatures={
            {Size={-8.4},Font=MinionPro-Capt},
            {Size={8.4-13},Font=MinionPro-Regular},
            {Size={13-19.9},Font=MinionPro-Subh},
            {Size={19.9-},Font=MinionPro-Disp}
        },
    },
    BoldFeatures={
        SizeFeatures={
            {Size={-8.4},Font=MinionPro-BoldCapt},
            {Size={8.4-13},Font=MinionPro-Bold},
            {Size={13-19.9},Font=MinionPro-BoldSubh},
            {Size={19.9-},Font=MinionPro-BoldDisp}
        },
    },
    ItalicFeatures={
        SizeFeatures={
            {Size={-8.4},Font=MinionPro-ItCapt},
            {Size={8.4-13},Font=MinionPro-It},
            {Size={13-19.9},Font=MinionPro-ItSubh},
            {Size={19.9-},Font=MinionPro-ItDisp}
            },
    },
    BoldItalicFeatures={
        SizeFeatures={
            {Size={-8.4},Font=MinionPro-BoldItCapt},
            {Size={8.4-13},Font=MinionPro-BoldIt},
            {Size={13-19.9},Font=MinionPro-BoldItSubh},
            {Size={19.9-},Font=MinionPro-BoldItDisp}
        },
    },
]{Minion Pro}

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
