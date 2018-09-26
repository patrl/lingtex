\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-paper}[2018/09/24 ling-paper]

% load the base class
\LoadClassWithOptions{memoir}

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

\input{ling-common.def}
% \input{ling-links.def}
%

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
% \setlength{\abstitleskip}{-\absparindent}
% \abstractrunin
% \abslabeldelim{:\quad}
% \setlength{\abstitleskip}{-1\absparindent}

% \RequirePackage{xpatch}
% \makeatletter
% \xpatchcmd{\@maketitle}{\begin{center}}{\begin{flushleft}}{}{}
% \xpatchcmd{\@maketitle}{\end{center}}{\end{flushleft}}{}{}
% \xpatchcmd{\@maketitle}{\begin{tabular}[t]{c}}{\begin{tabular}[t]{@{}l@{}}}{}{}
% \makeatother

%
%

\makeheadstyles{lingpaper}{%
    \setsecheadstyle{\headingfont\MakeUppercase\large\raggedright}%
    \setsubsecheadstyle{\headingfont\MakeUppercase\normalsize\raggedright}%
    \setsubsubsecheadstyle{\headingfont\MakeUppercase\normalsize\raggedright}%
    \setparaheadstyle{\normalfont\normalsize\scshape\addperiod}%
    \setsubparaheadstyle{\normalfont\normalsize\scshape\addperiod}
}

\counterwithout{section}{chapter}

\headstyles{lingpaper}


\input{ling-examples.def}
