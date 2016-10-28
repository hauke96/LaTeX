% // ------------//______\\------------ \\
% \\ ------------\\‾‾‾‾‾‾//------------ //
%
%
%                uniscript
%
%  Style for Uni scripts and longer papers
%
%
%
%                 ver.1.0
%
%	    under GPL 3 by Hauke Stieler
%
%
% << ------------<<======>>------------ >>
%
%
%   Web: hauke-stieler.de
%   Git: github.com/hauke96/LaTeX
%
%
% << ------------<<======>>------------ >>
%
%
% 	ver: 1.0
% 		key feautres:
%			- section style
%			- toc style
%			- page style
%
%
% // ------------//______\\------------ \\
% \\ ------------\\‾‾‾‾‾‾//------------ //



\LoadClass{article}
\usepackage{footnote}
\usepackage{titlesec}
\usepackage{fancyhdr}
\usepackage{lastpage}

\newcommand{\margin}{3cm}
\usepackage[left=\margin, top=\margin, right=\margin, bottom=\margin, includeheadfoot]{geometry}

% Section style from http://zoonek.free.fr/LaTeX/LaTeX_samples_section/0.html
\makeatletter
\def\section{\@ifstar\unnumberedsection\numberedsection}
\def\numberedsection
{
	\@ifnextchar[%]
	\numberedsectionwithtwoarguments\numberedsectionwithoneargument
}
\def\unnumberedsection
{
	\@ifnextchar[%]
	\unnumberedsectionwithtwoarguments\unnumberedsectionwithoneargument
}
\def\numberedsectionwithoneargument#1{
	\numberedsectionwithtwoarguments[#1]{#1}
}
\def\unnumberedsectionwithoneargument#1{
	\unnumberedsectionwithtwoarguments[#1]{#1}
}
\def\numberedsectionwithtwoarguments[#1]#2
{%
	\newpage
	\thispagestyle{footer}
	\ifhmode\par\fi
	\removelastskip
	\vskip 5ex\goodbreak
	\refstepcounter{section}%
	\hbox to \hsize
	{
		\hss\vbox
		{
			%\advance\hsize by 1cm
			\noindent
			\leavevmode\huge\bfseries\raggedright
			\begin{tabularx}{\linewidth+2cm}{lX}
				\thesection. & #2
			\end{tabularx}
			\hspace*{-1.5cm}							\makebox[\paperwidth]{\rule{\paperwidth}{0.5pt}} 
			\vskip -0.9\baselineskip\hspace*{-1cm}		\makebox[\paperwidth]{\rule{\paperwidth}{0.5pt}} 
			\vskip -0.9\baselineskip\hspace*{-0.5cm}	\makebox[\paperwidth]{\rule{\paperwidth}{0.5pt}} 
		}
	}\nobreak
	\vskip 2ex\nobreak
	\addcontentsline{toc}{section}
	{%
		\protect\numberline{\thesection}%
		#1
	}%
}
\def\unnumberedsectionwithtwoarguments[#1]#2
{%
	\newpage
	\ifhmode\par\fi
	\removelastskip
	\vskip 5ex\goodbreak
	\hbox to \hsize
	{
		\hss\vbox
		{
			%\advance\hsize by 1cm
			\noindent
			\leavevmode\Large\bfseries\raggedright
			#2
			\vskip -1ex
			\hspace*{-1.5cm}							\makebox[\paperwidth]{\rule{\paperwidth}{0.5pt}} 
			\vskip -0.9\baselineskip\hspace*{-1cm}		\makebox[\paperwidth]{\rule{\paperwidth}{0.5pt}} 
			\vskip -0.9\baselineskip\hspace*{-0.5cm}	\makebox[\paperwidth]{\rule{\paperwidth}{0.5pt}} 
		}
	}
	\nobreak
	\vskip 2ex\nobreak
	\addcontentsline{toc}{section}
	{%
		#1
	}%
}
\makeatother
\pagestyle{empty}

\titleformat{\subsection}
{\normalfont\Large\bfseries}
{\thesubsection}{1em}{}

\renewcommand{\arraystretch}{1.5}

\pagestyle{fancy}
\rhead{\today}
\renewcommand{\headrulewidth}{0.4pt} %obere linie
\renewcommand{\footrulewidth}{0.4pt} %untere linie
\rfoot{Seite \thepage \ von \pageref*{LastPage}}
\cfoot{}

\fancypagestyle{footer}{%
	\renewcommand{\headrulewidth}{0pt} %obere linie
	\fancyhead{}%
}

\let\oldmaketitle\maketitle
\renewcommand{\maketitle}
{
	\thispagestyle{empty}
	\oldmaketitle
}

\makeatletter
\renewcommand\tableofcontents{%
	\section{Inhaltsverzeichnis}
	\thispagestyle{empty}
    \@starttoc{toc}%
}
\makeatother