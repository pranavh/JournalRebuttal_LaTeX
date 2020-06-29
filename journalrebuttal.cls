%% journalrebuttal.cls
%% Copyright 2020 Pranav Hosangadi
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Pranav Hosangadi.
%
% This work consists of the file journalrebuttal.cls and the demo
% file journalrebuttal.tex
%% 
%%
%% journalrebuttal.cls
%% A LaTeX class to create rebuttal documents for journal
%% reviews
%% Created: 2020-06-28
%% Author: Pranav Hosangadi (pranav.hosangadi@gmail.com)
%% https://github.com/pranavh/JournalRebuttal_LaTeX
%% Last Modified: 2020-06-29
%% Version: 1.0
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{journalrebuttal}[2020/07/01 A LaTeX class to create rebuttal documents for journal reviews]

\newcommand{\headlinecolor}{\normalcolor}
\LoadClass{article}
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}

\textwidth=6.5in
\textheight=9in
\topmargin=-0.25in
\headheight=0in
\headsep=0in
\topskip=0in
\oddsidemargin=0in
\evensidemargin=0in
%\parsep=0in
%\topsep=0in
%\partopsep=0in
\RequirePackage{lastpage}

\RequirePackage{epsfig}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{subfigure}
\RequirePackage{overcite}
\RequirePackage{psfrag}
\RequirePackage{ifthen}
\RequirePackage{amsmath}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{cleveref}

\newcommand{\bul}{$\bullet$}
\newcommand{\listleftmargin}{0.15in}
\newcommand{\listindent}{0.15in}
\newcommand{\bulboxwidth}{0.03in}
\newcommand{\backline}{$\vspace{-1.0\baselineskip}$}
\newcommand{\newtopic}{$\backline\vspace{0.075in}\newline\noindent$}
\newcommand{\newsubtopic}{$\backline\vspace{0.05in}\newline\noindent$}
\newcommand{\newperiod}{$\backline\vspace{0.025in}\newline\noindent$}


\newcommand{\ColorNote}[3]{{\color{#1}{#2: #3}}}


% \newcommand{\revcomment}[2]{\vspace{0.5cm}\noindent{\bf Reviewer \##1, comment \##2}}

\newcommand{\makerule}{ \noindent \rule{6.5in}{0.02in} \vspace{-0.05in}}

\newcounter{reviewer}
\newcommand{\nextreviewer}{ \makerule \newpage \refstepcounter{reviewer}}


\makeatletter
\newcommand{\resplabel}[1]{\label[response]{resp:#1}}
\makeatother

\crefname{response}{our response \#}{our responses \#}
% \creflabelformat{response}{#2#1#3}

\newcounter{revcomment}[reviewer]
\newenvironment{revcomment}{\refstepcounter{revcomment}\par\medskip
   \noindent\textbf{Reviewer~\#\thereviewer, comment~\#\arabic{revcomment}} \rmfamily \slshape \\ \indent \resplabel{\therevcomment}}{\medskip}


\renewcommand\therevcomment{\thereviewer.\arabic{revcomment}}


\newenvironment{response}
{\par\medskip\noindent\textbf{Our response \#\therevcomment} \rmfamily \\ \indent}
{\medskip}

\makeatletter
\renewcommand{\@evenfoot}%
  {\normalsize\slshape \today\hfil
   \upshape {\thepage} of \pageref{LastPage}}
\renewcommand{\@oddfoot}{\@evenfoot}
\makeatother


\makeatletter
\def\manuscriptid#1{\def\@manuscriptid{#1}}
\newcommand{\printmanuscriptid}{\@manuscriptid}
\makeatother

\makeatletter
\def\journal#1{\def\@journal{#1}}
\newcommand{\printjournal}{\@journal}
\makeatother

\makeatletter
\renewcommand{\maketitle}{%
    \begin{center}
    \noindent{\bf \Large Reply to the Reviewers}\\
    \noindent{\sl Re: Manuscript ID~\@manuscriptid}\\
    \noindent{\sl ``\@title''}\\
    \noindent{\sl \@author}\\
    \noindent{\sl \@journal}\\
    \end{center}
    \vspace{0.2in}
}
\makeatother
