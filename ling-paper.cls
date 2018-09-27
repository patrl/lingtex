\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-paper}[2018/09/24 ling-paper]

\LoadClassWithOptions{scrartcl}

\input{ling-links.def}
\input{ling-common.def}

% use sans serif for headings
\setkomafont{disposition}{\normalcolor\headingfont\addfontfeature{Letters=Uppercase,Kerning=Uppercase}}
\setkomafont{author}{\normalcolor\headingfont}
\setkomafont{date}{\normalcolor\headingfont}

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

% \pretitle{\begin{flushleft}\headingfont\addfontfeature{LetterSpace=20}\Huge}

% \posttitle{%
%   \par\end{flushleft}\vskip 0.5em
% }

% \preauthor{\begin{flushleft}
% \headingfont\large \lineskip%
% \begin{tabular}[t]{@{}l@{}}}%
% \postauthor{\end{tabular}\par\end{flushleft}}
% \predate{\begin{flushleft}\headingfont\addfontfeature{Letters=Uppercase,Kerning=Uppercase}\large}
% \postdate{\par\end{flushleft}}

% \renewcommand*\and{%
%   \end{tabular}\\
%   \begin{tabular}[t]{@{}l@{}}%
% }%

% \renewcommand{\abstractnamefont}{\sffamily\addfontfeature{Letters=Uppercase,Kerning=Uppercase}\large\MakeUppercase}

% \counterwithout{section}{chapter}

% custom headers and footers
% \makeevenhead{plain}{}{\fade{\sffamily{Draft: \today}}}{}
% \makeoddhead{plain}{}{\fade{\sffamily{Draft: \today}}}{}
% \makeevenhead{headings}{}{\fade{\sffamily{Draft: \today}}}{}
% \makeoddhead{headings}{}{\fade{\sffamily{Draft: \today}}}{}
% \makeevenfoot{plain}{}{\thepage}{}
% \makeoddfoot{plain}{}{\thepage}{}
% \makeevenfoot{headings}{}{\thepage}{}
% \makeoddfoot{headings}{}{\thepage}{}

% \makechapterstyle{ling-paper}{
% \addtocounter{secnumdepth}{2}
% \setsecheadstyle{\raggedright\sffamily\addfontfeature{Letters=Uppercase,Kerning=Uppercase}\Large\MakeUppercase}
% \setsubsecheadstyle{\raggedright\sffamily\addfontfeature{Letters=Uppercase,Kerning=Uppercase}\large\MakeUppercase}
% \setsubsubsecheadstyle{\raggedright\itshape}
% }

% \chapterstyle{ling-paper}

% ensures that the bib heading is typeset as a section rather than a chapter in memoir with the article option
% \defbibheading{bibliography}[\bibname]{%
% \section*{#1}%
% \markboth{#1}{#1}}

% \AtBeginDocument{%
%   \renewcommand{\bibname}{References}
% }
%
\RequirePackage{gitinfo2}

\input{ling-examples.def}
