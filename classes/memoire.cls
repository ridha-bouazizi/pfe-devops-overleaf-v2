\NeedsTeXFormat{LaTeX2e}


\LoadClass[a4paper, 12pt]{report}


%---------------------------------------%
%			PAGE MARGINS				%
%---------------------------------------%
%\RequirePackage[total={20cm,27cm},left=0.8in,right=0.8in,top=1in,bottom=1in]{geometry}
%---------------------------------------%
%---------------------------------------%
%---------------------------------------%

% \usepackage{listings}


%---------------------------------------%
%				IMPORTS					%
%---------------------------------------%
\RequirePackage[utf8]{inputenc}
\RequirePackage[french, english]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{minitoc,soul,colortbl,multirow,longtable,xcolor,lastpage,fancyhdr,setspace,anyfontsize,titlesec,amsmath,amsfonts,marvosym,mathrsfs,array,multicol,enumitem,graphicx,float,pgf,pifont,xcolor,amsthm,thmtools,tikz}%,pgfplots}
\RequirePackage{latexsym,amssymb,amsthm,ragged2e}
%\pgfplotsset{compat=1.13}
\RequirePackage[colorlinks=false, citecolor=blue, urlcolor=blue]{hyperref}
\RequirePackage[left=2.5cm,right=2cm,top=2.5cm,bottom=2.5cm,bindingoffset=1cm]{geometry}
\usetikzlibrary{arrows}
\graphicspath{{./img/}}
\allowdisplaybreaks
\renewcommand{\baselinestretch}{1.3} 


%---------------------------------------%
%---------------------------------------%
%---------------------------------------%


\RequirePackage{minted}
\RequirePackage{listings}

%---------------------------------------%
%		commandes personnelles			%
%---------------------------------------%\\
\onehalfspacing%espace interligne = 1,5
% \setlength\parindent{0pt} % sets indent to zero
\setlength{\parskip}{6pt} % changes vertical space between paragraphs
\renewcommand\thechapter{\Roman{chapter}.}
\renewcommand\thesection{\Roman{section}.}
\renewcommand{\thesubsection}{\Roman{section}.\arabic{subsection}.}
\renewcommand{\thesubsubsection}{(\alph{subsubsection})}
\newcommand{\chapterfont}{\fontsize{20}{24}\selectfont}
\newcommand{\sectionfont}{\fontsize{18}{22}\selectfont}
\newcommand{\subsectionfont}{\fontsize{16}{19}\selectfont}
\newcommand{\subsubsectionfont}{\fontsize{14}{17}\selectfont}
\newcommand{\paragraphfont}{\fontsize{12}{14}\selectfont}
\fancypagestyle{plain}{%
    \fancyhf{}%
	\fancyfoot[C]{\thepage}
}
\setcounter{tocdepth}{3} 
\setcounter{secnumdepth}{3}
\setcounter{minitocdepth}{3} 
\setlength{\mtcindent}{24pt} 
\renewcommand{\mtcfont}{\small\rm}
\renewcommand{\mtcSfont}{\small\bf}
\newcommand{\exercice}[1]{\begin{exo}~~\\#1
\end{exo}}
%\newcommand{\solution}[1]{\begin{cor}~~\\#1\end{cor}}
\newcommand{\p}{polynôme }
\newcommand{\R}{\mathbb{R}}
\newcommand{\K}{\mathbb{K}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\fx}[3]{f:\begin{array}{lll}#1&\to&#2\\x&\mapsto&#3\end{array}}
\newcommand{\gx}[3]{f:\begin{array}{lll}#1&\to&#2\\x&\mapsto&#3\end{array}}
\newcommand{\hx}[3]{f:\begin{array}{lll}#1&\to&#2\\x&\mapsto&#3\end{array}}
\newcommand{\fonctionx}[4]{#4:\begin{array}{lll}#1&\to&#2\\x&\mapsto&#3\end{array}}
\newcommand{\fonction}[5]{#4:\begin{array}{lll}#1&\to&#2\\#5&\mapsto&#3\end{array}}
\newcommand{\vecteur}[1]{\overrightarrow{#1}}
\newcommand{\vecCoord}[3]{\vecteur{#1}\begin{pmatrix}#2\\#3\end{pmatrix}}
\newcommand{\Oij}{(O,\vec i,\vec j)}
\newcommand{\courbe}[1]{\mathscr C_{#1}}
\newcommand{\limite}[2]{\displaystyle\lim_{#1}#2}
\newcommand{\fraction}[2]{\displaystyle\frac{#1}{#2}}
\newcommand{\integrale}[3]{\displaystyle\int_{#1}^{#2}{#3}}
\newcommand{\somme}[3]{\displaystyle\sum_{#1}^{#2}{#3}}
\newcommand{\scalaire}[2]{\overrightarrow{#1}.\overrightarrow{#2}}
\newtheorem{theorem}{Théorème}[chapter]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{definition}{Définition}[chapter]
\theoremstyle{remark}
\newtheorem{example}{Exemple}[chapter]
\newtheorem{assumption}{Assumption}[chapter]
% redefine chapter, section ... commands
\titleformat{\chapter}[display]{\ungaramond\bfseries\chapterfont}{\chaptertitlename\ \thechapter}{1em}{}[]
\titleformat{\section}{\ungaramond\sectionfont\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\ungaramond\subsectionfont\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\ungaramond\subsubsectionfont\bfseries}{\thesubsubsection}{1em}{}
\titleformat{\paragraph}{\ungaramond\bfseries\paragraphfont}{\theparagraph}{1em}{}
\titleformat{\subparagraph}{\ungaramond\bfseries\paragraphfont}{\thesubparagraph}{1em}{}



%---------------------------------------%
%---------------------------------------%
%---------------------------------------%
%% Defining section, subsection and subsubsection spacing
\usepackage{titlesec}
\titlespacing{\section}{7mm}{8pt}{8pt}
\titlespacing{\subsection}{10mm}{8pt}{8pt}
\titlespacing{\subsubsection}{13mm}{8pt}{6pt}
\titlespacing{\chapter}{14mm}{8pt}{6pt}
% ***********
\usepackage{pstcol}
\makeatletter
\def\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
\def\@makechapterhead#1{
    \vspace*{10\p@}
    {\parindent \z@ \centering \reset@font
        \thickhrulefill\quad 
        \scshape\bfseries\textit{\@chapapp{}  \thechapter}  
        \quad \thickhrulefill
        \par\nobreak
        \vspace*{10\p@}%
        \interlinepenalty\@M
        % \hrule
        % \vspace*{10\p@}%
        \Huge \bfseries #1 \par\nobreak
        \par
        \vspace*{10\p@}%
        % \hrule
        \vskip 20\p@
        
    }
}
\def\@makeschapterhead#1{\hbox{%
    \huge\hbox{\textbf{#1}}%
}\par\vskip 1cm} 


% /// TO check
% load the book class using a4paper
% \LoadClass[12pt,a4paper, oneside]{book}
% \usepackage[a4paper]{geometry}

% % give the header a bit more room for fancyhdr below
% % otherwise LaTeX will spew on each page
% \addtolength{\headheight}{3pt}

% % first set to zero ... 
% \setlength{\oddsidemargin}{-1in}
% \setlength{\evensidemargin}{-1in}
% \setlength{\topmargin}{-1in}       

% % adjust these if printer is off by a bit
% \setlength{\hoffset}{0mm}
% \setlength{\voffset}{0mm}
% % PS also that the optimal number of characters per line 
% % for readability is only 60-70, we're over so we'll be a
% % bit more generous on the evensidemargin

% \addtolength{\oddsidemargin}{22mm} 
% \addtolength{\evensidemargin}{22mm}
% \addtolength{\topmargin}{20mm}

% % set up some of the spacing
% \setlength{\marginparwidth}{40pt}  
% \setlength{\marginparsep}{10pt}
% \setlength{\headsep}{0.2in}

% % A4 dimensions [mm]: 209.903 x 297.039
% \setlength{\textwidth}{21 cm}
% \setlength{\textheight}{30 cm}

% % fix up width
% \addtolength{\textwidth}{-\oddsidemargin}
% \addtolength{\textwidth}{-\evensidemargin}
% % now we've added 2inches in setting up margins
% \addtolength{\textwidth}{-2in}

% % fix up height
% \addtolength{\textheight}{-2\topmargin}
% \addtolength{\textheight}{-\headheight}
% \addtolength{\textheight}{-\headsep}
% \addtolength{\textheight}{-\footskip}
% % now we've added 2inches in setting up margins
% \addtolength{\textheight}{-2in}

% \counterwithout{figure}{section}
% \counterwithout{figure}{subsection}
% \setcounter{figure}{chapter}

%============== Table & Figure Captions Style ==============%

\usepackage{caption}
% \captionsetup[table]{
%   labelfont=bf,
%   labelsep = newline,
%   name = Table,
%   justification=centering,
%   singlelinecheck=false,%%%%%%% a single line is centered by default

%   skip = \medskipamount}

% \captionsetup[figure]{
%   labelfont=bf,
%   labelsep = newline,
%   name = Figure,
%   justification=centering,
%   singlelinecheck=false,
%   labelsep=colon,
%   skip = \medskipamount}

\renewcommand{\thefigure}{\Roman{section}.\arabic{figure}\space}
\renewcommand{\thetable}{\Roman{section}.\arabic{table}\space}
\renewcommand{\thelisting}{\Roman{section}.\arabic{listing}\space}

% \usepackage{multicol}
% \setlength\columnsep{3ex}