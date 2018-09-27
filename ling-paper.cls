\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-paper}[2018/09/24 ling-paper]

% load the base class
\PassOptionsToClass{12pt,a4paper,oneside,article,openany}{memoir}
\LoadClassWithOptions{memoir}

% colors stolen from classicthesis:
\PassOptionsToPackage{dvipsnames}{xcolor}
\RequirePackage{xcolor}

\definecolor{ling-cite}{rgb}{0,0.5,0} % WebGreen
\definecolor{ling-url}{named}{Maroon} % Maroon
\definecolor{ling-link}{named}{RoyalBlue} % RoyalBlue {cmyk}{1, 0.50, 0, 0}

\RequirePackage{hyperref}
\hypersetup{colorlinks=true,linktocpage=true,breaklinks=true,urlcolor=ling-url,linkcolor=ling-link,citecolor=ling-cite}

\input{ling-common.def}

\RequirePackage{microtype}
\RequirePackage{fontspec}
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

\PassOptionsToPackage{math-style=french}{unicode-math}
\RequirePackage{unicode-math}
\setmathfont{STIX Two Math}
\setmathfont{Minion Pro}[range=up]
\setmathfont{Minion Pro Italic}[range=it]
\setmathfont{Minion Pro Bold}[range=bfup]
\setmathfont{Minion Pro Bold Italic}[range=bfit]
\setmathfont{Myriad Pro}[range=sfup]
\setmathfont{Myriad Pro Italic}[range=sfit]
\setmathfont{Myriad Pro Bold}[range=bfsfup]
\setmathfont{Myriad Pro Bold Italic}[range=bfsfit]
\setmathfont{SF Mono}[range=tt]
\setmonofont{SF Mono}
\newfontfamily\headingfont[]{Myriad Pro Light}

\pretitle{\begin{flushleft}\headingfont\addfontfeature{LetterSpace=20.0}\Huge}

\posttitle{%
  \par\end{flushleft}\vskip 0.5em
}

\preauthor{\begin{flushleft}
\headingfont\large \lineskip%
\begin{tabular}[t]{@{}l@{}}}%
\postauthor{\end{tabular}\par\end{flushleft}}
\predate{\begin{flushleft}\headingfont\addfontfeature{Letters=Uppercase,Kerning=Uppercase}\large}
\postdate{\par\end{flushleft}}

\renewcommand*\and{%
  \end{tabular}\\
  \begin{tabular}[t]{@{}l@{}}%
}%

\renewcommand{\abstractnamefont}{\headingfont\normalsize}

\makeheadstyles{lingpaper}{%
    \setsecheadstyle{\headingfont\MakeUppercase\large\raggedright}%
    \setsubsecheadstyle{\headingfont\MakeUppercase\large\raggedright}%
    \setsubsubsecheadstyle{\headingfont\MakeUppercase\normalsize\raggedright}%
    \setparaheadstyle{\normalfont\normalsize\scshape\addperiod}%
    \setsubparaheadstyle{\normalfont\normalsize\scshape\addperiod}
}

\counterwithout{section}{chapter}

\headstyles{lingpaper}

\input{ling-examples.def}
