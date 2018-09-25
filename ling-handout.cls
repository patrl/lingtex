\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-handout}[2018/09/24 ling-handout]

% load the base class
\LoadClassWithOptions{scrartcl}

\input{ling-common.def}

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

\RequirePackage{scrlayer-scrpage}
\RequirePackage{scrlayer-notecolumn}
\RequirePackage{ragged2e}

%% step 1: counter
\newcounter{snmark}
\setcounter{snmark}{0}


%% step 2: hanging sidenotes, definition from tugboat
\makeatletter
\newcommand*{\hangfrom}[1]{%
  \setbox\@tempboxa\hbox{{#1}}%
  \hangindent \wd\@tempboxa
  \noindent\box\@tempboxa}
\makeatletter

%% step 3: define sidenote marks in the text
\newcommand{\makesidenotemark}{%
  \textsuperscript{\thesnmark}%
}%


%% step 4: and now the definition of sidenotes
\newcommand{\sidenote}[1]{%
  \refstepcounter{snmark}% Zähler erhöhen
  \makesidenotemark{}% Nummer im Text setzen.
  \makenote[paragraphs]{%
    \hangfrom{%
      \makebox[1em][l]{%
        \thesnmark}%
    }%
    \protect\RaggedRight\detokenize{#1}}% Text setzen im Rand
}


%% this is, except for the values (».7«) from scrguide.pdf to define
%% the notecolumn.

\newlength{\paragraphscolwidth}
\AfterCalculatingTypearea{%
\setlength{\paragraphscolwidth}{.4\textwidth}%
\addtolength{\paragraphscolwidth}{-\marginparsep}%
}
\recalctypearea
\DeclareNewNoteColumn[%
position=\oddsidemargin+1in
+.7\textwidth
+\marginparsep,
width=\paragraphscolwidth,
font=\footnotesize
]{paragraphs}

\RequirePackage{environ}
\makeatletter
\NewEnviron{margintable}{%
  \expandafter\@margintable\expandafter{\BODY}%
}
\newcommand*\@margintable[1]{%
  \makenote*[paragraphs]{%
    \begin{nonfloattable}#1\end{nonfloattable}%
  }%
}
\newenvironment{nonfloattable}{%
  \par\noindent\begin{minipage}{\linewidth}
    \def\@captype{table}%
}{%
  \end{minipage}\par
}
\RequirePackage{makeidx}

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
