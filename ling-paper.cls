\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-paper}[2018/09/24 ling-paper]

% load the base class
\LoadClassWithOptions{scrartcl}

\input{ling-common.def}
% \input{ling-links.def}

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

% colors stolen from classicthesis:
\PassOptionsToPackage{dvipsnames}{xcolor}
\RequirePackage{xcolor} % [dvipsnames]
\definecolor{CTsemi}{gray}{0.55} % chapter numbers will be semi transparent .5 .55 .6 .0
\definecolor{CTcitation}{rgb}{0,0.5,0} % WebGreen
\definecolor{CTurl}{named}{Maroon} % Maroon
\definecolor{CTtitle}{named}{Maroon} % Maroon {cmyk}{0, 0.87, 0.68, 0.32}
\definecolor{CTlink}{named}{RoyalBlue} % RoyalBlue {cmyk}{1, 0.50, 0, 0}
\definecolor{halfgray}{gray}{0.55} % chapter numbers will be semi transparent .5 .55 .6 .0
\definecolor{webgreen}{rgb}{0,0.5,0}
\definecolor{webbrown}{rgb}{0.6,0,0}

\RequirePackage{hyperref}
\hypersetup{colorlinks=true,linktocpage=true,breaklinks=true,urlcolor=CTurl,linkcolor=CTlink,citecolor=CTcitation}


\input{ling-examples.def}
