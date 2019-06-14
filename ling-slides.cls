\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-slides}[2018/09/24 ling-slides]

% load the base class
\LoadClassWithOptions{beamer}

\input{ling-common.def}

% use metropolis theme
\usetheme{metropolis}
\usefonttheme{professionalfonts}
\setbeamerfont{title}{shape=\itshape,family=\rmfamily,series=\mdseries,size=\LARGE}
\setbeamerfont{subtitle}{shape=\itshape,family=\rmfamily,series=\mdseries,size=\large}
\setbeamerfont{section title}{shape=\itshape,family=\rmfamily,series=\mdseries,size=\LARGE}
\setbeamerfont{author}{family=\sffamily,series=\mdseries,shape=\scshape}
\setbeamerfont{date}{family=\sffamily,series=\mdseries,shape=\scshape}
\setbeamerfont{institute}{family=\sffamily,series=\mdseries,shape=\scshape}
\setbeamerfont{frametitle}{series=\mdseries}

% use light variant of owl color theme
\usecolortheme[snowy]{owl}

\ifthenelse{\boolean{xetex}\OR\boolean{luatex}}
{%
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
  % \setmathfont{STIX Two Math}
  % \setmathfont{libertinusmath-regular.otf}
  % \setmathfont[version=bold]{libertinusmath-bold.otf}
  \setmathfont{STIX Two Math}%[range={\lBrace,\rBrace}]
  % \setmathfont[version=bold]{libertinusmath-bold.otf}
  % \setmathfont{Minion Pro}[range=up]
  % \setmathfont{Minion Pro Italic}[range=it]
  % \setmathfont{Minion Pro Bold}[range=bfup]
  % \setmathfont{Minion Pro Bold Italic}[range=bfit]
  % \setmathfont{Cronos Pro}[range=sfup]
  % \setmathfont{Cronos Pro Italic}[range=sfit]
  % \setmathfont{Cronos Pro Bold}[range=bfsfup]
  % \setmathfont{Cronos Pro Bold Italic}[range=bfsfit]
  % \setmathfont{Minion Pro Italic}[range={scr,bfscr,cal,bfcal},Contextuals=Swash]
  % \setmathfont{SF Mono}[range=tt]
  % \setmonofont{SF Mono}
  % \newfontfamily\headingfont[]{Myriad Pro Light}
}%
{%
  \PassOptionsToPackage{T1}{fontenc}
  \RequirePackage{fontenc}
  \PassOptionsToPackage{utf8}{inputenc}
  \RequirePackage{inputenc}
  \RequirePackage{libertine}
  \RequirePackage{textcomp} % required to get special symbols
  \PassOptionsToPackage{varqu,varl}{inconsolata}
  \RequirePackage{inconsolata}
  \RequirePackage{amsthm}% must be loaded before newtxmath
  \PassOptionsToPackage{scr=rsfso}{mathalfa}
  \RequirePackage[scr=rsfso]{mathalfa}
  \PassOptionsToPackage{cmintegrals, cmbraces, libertine,vvarbb}{newtxmath}
  \RequirePackage{newtxmath}
  \RequirePackage{bm}% load after all math to give access to bold math
  \makeatletter
  \AtBeginDocument{\def\libertine@figurealign{}\libertineOsF}
  \makeatother
}

\input{ling-examples.def}
