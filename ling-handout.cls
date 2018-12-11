\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-handout}[2018/09/24 ling-handout]

\RequirePackage{scrbase}
\DefineFamily{ling}
\DefineFamilyMember{ling}
\FamilyBoolKey{ling}{cronos}{ling@cronos}
\FamilyBoolKey{ling}{git}{ling@git}
\FamilyProcessOptions{ling}

% load the base class
\LoadClass[twocolumn,landscape,12pt,paper=a4,DIV=15]{scrartcl}

\input{ling-links.def}
\input{ling-common.def}

% \PassOptionsToPackage{noxcolor}{beamerarticle}
% \RequirePackage{beamerarticle}
% \usebeamercolortheme[snowy]{owl}

% use sans serif for headings
\setkomafont{disposition}{\normalcolor\sffamily}
\setkomafont{author}{\normalcolor\sffamily}
\setkomafont{date}{\normalcolor\sffamily}

\RequirePackage{microtype}

\ifthenelse{\boolean{xetex}\OR\boolean{luatex}}
{
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
  \ifthenelse{\boolean{ling@cronos}}{%
  \setsansfont[%
  UprightFeatures={
    SizeFeatures={
      {Size={-8.4},Font=CronosPro-Capt},
      {Size={8.4-13},Font=CronosPro-Regular},
      {Size={13-19.9},Font=CronosPro-Subh},
      {Size={19.9-},Font=CronosPro-Disp}
    },
  },
  BoldFeatures={
    SizeFeatures={
      {Size={-8.4},Font=CronosPro-BoldCapt},
      {Size={8.4-13},Font=CronosPro-Bold},
      {Size={13-19.9},Font=CronosPro-BoldSubh},
      {Size={19.9-},Font=CronosPro-BoldDisp}
    },
  },
  ItalicFeatures={
    SizeFeatures={
      {Size={-8.4},Font=CronosPro-CaptIt},
      {Size={8.4-13},Font=CronosPro-Italic},
      {Size={13-19.9},Font=CronosPro-SubhIt},
      {Size={19.9-},Font=CronosPro-DispIt}
    },
  },
  BoldItalicFeatures={
    SizeFeatures={
      {Size={-8.4},Font=CronosPro-BoldCaptIt},
      {Size={8.4-13},Font=CronosPro-BoldIt},
      {Size={13-19.9},Font=CronosPro-BoldSubhIt},
      {Size={19.9-},Font=CronosPro-BoldDispIt}
    },
  },
  ]{Cronos Pro}}%
  {
    \setsansfont{Myriad Pro}
  }
  \PassOptionsToPackage{math-style=ISO}{unicode-math}
  \RequirePackage{unicode-math}
  \setmathfont{STIX Two Math}%[range={\lBrace,\rBrace}]
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

\PassOptionsToPackage{mark}{gitinfo2}
\RequirePackage{gitinfo2}

% \RequirePackage{beamerarticle}

% common code for example sentences (must be loaded late)
\input{ling-examples.def}

\usepackage{minted}
