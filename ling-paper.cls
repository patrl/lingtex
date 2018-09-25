\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ling-paper}[2018/09/24 ling-paper]

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
\defaultfontfeatures{Scale=MatchLowercase}
\setmainfont{Minion Pro}
\setsansfont{Myriad Pro}
\RequirePackage{unicode-math}
\setmathfont{STIX Two Math}
\setmonofont{SF Mono}

\RequirePackage{expex}
\let\expexgla\gla
\AtBeginDocument{\let\gla\expexgla}
