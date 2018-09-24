\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-abstract}[2018/09/24 ling-abstract]

% load the base class
\LoadClassWithOptions{scrartcl}

\input{ling-common.def}

\RequirePackage[margin=1in]{geometry}
\RequirePackage{parskip}

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

% don't list all editors in bib
\renewbibmacro*{byeditor+others}{%
  \setunit{\addcomma\space}%
  \ifnameundef{editor}
    {}
    {\usebibmacro{byeditor+othersstrg}%
     \setunit{\addspace}%
     \printnames[byeditor][1-1]{editor}%
     \clearname{editor}%
     \newunit}%
  \usebibmacro{byeditorx}%
  \usebibmacro{bytranslator+others}}

\RequirePackage{pifont}

\defbibenvironment{bibliography}
  {\noindent}% or {} if you like indentation
  {\unspace}
  {\quad\ding{118}\printtext\addspace}

\renewcommand*{\bibfont}{\footnotesize}

\renewcommand{\section}[1]{\noindent\textsc{#1:}}

\RequirePackage[headsepline]{scrlayer-scrpage}

\renewcommand{\headfont}{\scshape}

\clearpairofpagestyles
\chead{\@title}

\RequirePackage{expex}

% no spacing between examples
\lingset{
  aboveexskip=0pt,
  belowexskip=0pt,
  interpartskip=0pt,
  belowpreambleskip=0pt}
