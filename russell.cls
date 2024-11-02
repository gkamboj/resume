\ProvidesClass{russell}[2017/02/05 v1.6.1 russell Curriculum Vitae Class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage{ragged2e}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{ifxetex}
\RequirePackage{xifthen}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
\RequirePackage[quiet]{fontspec}
\defaultfontfeatures{Ligatures=TeX}
\RequirePackage{unicode-math}
\RequirePackage{fontawesome5}
\RequirePackage{roboto}
\RequirePackage[default,opentype]{sourcesanspro}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{parskip}

\RequirePackage[hidelinks,unicode,pdfpagelabels=false]{hyperref}
\hypersetup{
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={}
}

\RequirePackage{bookmark}

\newcommand*{\fontdir}[1][fonts/]{\def\@fontdir{#1}}
\geometry{left=1.4cm, top=.8cm, right=1.4cm, bottom=0.5cm, footskip=.5cm}

\fancyhfoffset{0em}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\pagestyle{fancy}


\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{414141} %414141
\definecolor{lightgray}{HTML}{999999}
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{4472c4}
\definecolor{darktext}{HTML}{414141} 
\colorlet{text}{black}
\colorlet{graytext}{gray}
\colorlet{lighttext}{black}
\colorlet{sectiondivider}{gray}
\definecolor{russell-emerald}{HTML}{00A388}
\definecolor{russell-skyblue}{HTML}{0395DE}
\definecolor{russell-red}{HTML}{DC3522}
\definecolor{russell-purple}{HTML}{A32CC4}
\definecolor{russell-pink}{HTML}{EF4089}
\definecolor{russell-orange}{HTML}{FF6138}
\definecolor{russell-nephritis}{HTML}{27AE60}
\definecolor{russell-concrete}{HTML}{95A5A6}
\definecolor{russell-darknight}{HTML}{131A28}
\definecolor{russell-black}{HTML}{000000}
\colorlet{russell}{russell-red}
\newbool{acvSectionColorHighlight}
\setbool{acvSectionColorHighlight}{true}
\def\@sectioncolor#1#2#3{
  \ifbool{acvSectionColorHighlight}{{\color{russell}#1#2#3}}{#1#2#3}%
}

\usepackage{newtxtext} % Times Roman font
\usepackage{xcolor}
\newcommand*{\bodyfont}{\rmfamily} % Times Roman

\usepackage{fontawesome5}
\usepackage{tabularx}
\usepackage{multirow}

\newcommand*{\headerfont}{\fontfamily{ua1}\selectfont} % Arial
\newcommand*{\headerfontlight}{\fontfamily{ua1l}\selectfont} % Arial Light
\newcommand*{\footerfont}{\fontfamily{ua1}\selectfont} % Arial
\newcommand*{\bodyfontlight}{\fontfamily{ua1l}\selectfont} % Arial Light

\newcommand*{\headerfirstnamestyle}[1]{{\fontsize{15pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\fontsize{15pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerpositionstyle}[1]{{\vspace{2mm}\fontsize{11pt}{1em}\bodyfont\scshape\color{russell-black} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{8pt}{1em}\headerfont\itshape\color{lighttext} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{9pt}{1em}\headerfont\color{text} #1}} % Phone Number
\newcommand*{\headerquotestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\itshape\color{darktext} #1}}
\newcommand*{\footerstyle}[1]{{\fontsize{8pt}{1em}\footerfont\scshape\color{lighttext} #1}}
\newcommand*{\sectionstyle}[1]{{\fontsize{10.5pt} %Head of Education and exp Font size
{1em}\bodyfont\bfseries\color{blue}\@sectioncolor #1}}
\newcommand*{\subsectionstyle}[1]{{\fontsize{12pt}{1em}\bodyfont\scshape\textcolor{text}{#1}}}
\newcommand*{\paragraphstyle}{\fontsize{12pt}{1em}\bodyfontlight\upshape\color{text}} 

\newcommand*{\entrytitlestyle}[1]{{\fontsize{10.5pt}{1em}\bodyfont\bfseries\color{text} #1}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{10.5pt}{1em}\bodyfont\color{black} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{9.5pt}{1em}\bodyfontlight\slshape\color{black} #1}}
\newcommand*{\entrylocationstyle}[1]{{\fontsize{9.5pt}{1em}\bodyfontlight\slshape\color{russell} #1}}
\newcommand*{\descriptionstyle}[1]{{\fontsize{10.5pt}{1em}\bodyfont\upshape\color{black} #1}} % Content under Experience and Projects

\newcommand*{\subentrytitlestyle}[1]{{\fontsize{8pt}{1em}\bodyfont\mdseries\color{black} #1}}
\newcommand*{\subentrypositionstyle}[1]{{\fontsize{7pt}{1em}\bodyfont\scshape\color{black} #1}}
\newcommand*{\subentrydatestyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{black} #1}}
\newcommand*{\subentrylocationstyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{russell} #1}}
\newcommand*{\subdescriptionstyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\upshape\color{text} #1}}

\newcommand*{\honortitlestyle}[1]{{\fontsize{11pt}{1em}\bodyfont\color{black} #1}}

\newcommand*{\honordatestyle}[1]{{\fontsize{9.5pt}{1em}\bodyfont\color{graytext} #1}}
\newcommand*{\skilltypestyle}[1]{{\fontsize{10pt}{0em}\bodyfont\color{black} #1}}
\newcommand*{\skillsetstyle}[1]{{\fontsize{10pt}{1em}\bodyfont\color{black} #1}}

\newcommand*{\lettersectionstyle}[1]{{\fontsize{14pt}{1em}\bodyfont\bfseries\color{text}\@sectioncolor #1}}
\newcommand*{\recipientaddressstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\recipienttitlestyle}[1]{{\fontsize{11pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\lettertitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\bfseries\color{darktext} \underline{#1}}}
\newcommand*{\letterdatestyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\lettertextstyle}{\fontsize{10pt}{1.4em}\bodyfont\upshape\color{graytext}}
\newcommand*{\letternamestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\letterenclosurestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\slshape\color{lighttext} #1}}


\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}

\newcommand*{\address}[1]{\def\@address{#1}}

\newcommand*{\position}[1]{\def\@position{#1}}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}
\newcommand*{\leetcode}[1]{\def\@leetcode{#1}}
\newcommand*{\extrainfo}[1]{\def\@extrainfo{#1}}

\renewcommand*{\quote}[1]{\def\@quote{#1}}

\newcommand{\acvHeaderNameDelim}{\space}
\newcommand{\acvHeaderAfterNameSkip}{-.4mm}
\newcommand{\acvHeaderAfterPositionSkip}{.4mm}
\newcommand{\acvHeaderAfterAddressSkip}{-.5mm}
\newcommand{\acvHeaderIconSep}{\space}
\newcommand{\acvHeaderSocialSep}{\quad\textbar\quad}
\newcommand{\acvHeaderAfterSocialSkip}{6mm}
\newcommand{\acvHeaderAfterQuoteSkip}{5mm}

\newcommand{\acvSectionTopSkip}{1mm}
\newcommand{\acvSectionContentTopSkip}{1.5mm}

\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}



\newcommand*{\makecvheader}[1][C]{%
  \newlength{\headertextwidth}
  \newlength{\headerphotowidth}
  \ifthenelse{\isundefined{\@photo}}{
    \setlength{\headertextwidth}{\textwidth}
    \setlength{\headerphotowidth}{0cm}
  }{
    \setlength{\headertextwidth}{0.76\textwidth}
    \setlength{\headerphotowidth}{0.24\textwidth}
  }
  \begin{minipage}[c]{\headertextwidth}
    \ifthenelse{\equal{#1}{L}}{\raggedright}{\ifthenelse{\equal{#1}{R}}{\raggedleft}{\centering}}
    \headerfirstnamestyle{\@firstname}\headerlastnamestyle{{}\acvHeaderNameDelim\@lastname}%
    \\[\acvHeaderAfterNameSkip]%
    \ifthenelse{\isundefined{\@position}}{}{\headerpositionstyle{\@position\\[\acvHeaderAfterPositionSkip]}}%
    \ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\[\acvHeaderAfterAddressSkip]}}%
    \headersocialstyle{%
      \newbool{isstart}%
      \setbool{isstart}{true}%
      \ifthenelse{\isundefined{\@mobile}}%
        {}%
        {%
          \href{tel:\@mobile}{\faIcon{phone} \textcolor{blue}{\@mobile}}
          \setbool{isstart}{false}%
        }%
      \ifthenelse{\isundefined{\@email}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{mailto:\@email}{\faIcon{envelope} \textcolor{blue} {\@email}}%
        }%
      \ifthenelse{\isundefined{\@homepage}}%
        {}
        {
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://\@homepage}{\faIcon{globe} \textcolor{blue}{\@homepage}}%
        }
      \ifthenelse{\isundefined{\@github}}%
        {}
        {
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://github.com/\@github}{\faIcon{github} \textcolor{blue}{\@github}}%
        }
      \ifthenelse{\isundefined{\@linkedin}}%
        {}
        {
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.linkedin.com/in/\@linkedin}{\faIcon{linkedin} \textcolor{blue}{\@linkedin}}%
        }
        \ifthenelse{\isundefined{\@leetcode}}%
        {}
        {
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://leetcode.com/\@leetcode}{\textcolor{blue}{\includegraphics[width=1em,height=1em]{leetcode-icon.png} \@leetcode}}%
        }
      \ifthenelse{\isundefined{\@extrainfo}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \@extrainfo%
        }%
    } \\[\acvHeaderAfterSocialSkip]%
    \ifthenelse{\isundefined{\@quote}}%
      {}%
      {\headerquotestyle{\@quote\\}\vspace{\acvHeaderAfterQuoteSkip}}%
  \end{minipage}

}

\newcommand*{\sociallink}[2]{
    \ifthenelse{\equal{#1}{}}{}{\href{#1}{\textcolor{russell}{\faIcon{#2}\ #1}}}%
}

\newcommand*{\makecvfooter}[3]{%
  \fancyfoot{}
  \fancyfoot[L]{\footerstyle{#1}}
  \fancyfoot[C]{\footerstyle{#2}}
  \fancyfoot[R]{\footerstyle{#3}}
}

\newcommand{\cvsection}[1]{
  \vspace{\acvSectionTopSkip}
  \sectionstyle{#1}
  \phantomsection
  \color{sectiondivider}\vhrulefill{0.5pt}
}

\newcommand{\cvsubsection}[1]{
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2mm}
  \subsectionstyle{#1}
  \phantomsection
}

\newenvironment{cvparagraph}{
  \vspace{\acvSectionContentTopSkip}
  \vspace{-3mm}
  \paragraphstyle
}{%
  \par
  \vspace{-4mm} 
}

\newenvironment{cventries}{
  \vspace{\acvSectionContentTopSkip}
  \begin{center}
}{
  \end{center}
}

\newcommand*{\cventry}[3]{
  \vspace{-2.5mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \entrytitlestyle{#1} & \entrydatestyle{#2} \\
    \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#3}}
  \end{tabular*}
}

\newcommand*{\projectentry}[2]{

    \vspace{-1.5mm}
    \entrytitlestyle{#1} \descriptionstyle{#2}
}

\newcommand*{\cvedentry}[3]{
  \vspace{-0.5mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{-8pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \entrytitlestyle{#1} & \entrytitlestyle{#2} \\
    \multicolumn{2}{@{}p{\textwidth}@{}}{\entrypositionstyle{#3}} %
  \end{tabular*}
}

\newcommand*{\cventrynew}[3]{
  \vspace{-1.5mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \ifempty{#1#2}
      {\entrydatestyle{#2} \\}
      {\entrytitlestyle{#1} & \entrytitlestyle{#2} \\}
    \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#3}}
  \end{tabular*}
}
 
\newenvironment{cvsubentries}{
  \begin{center}
}{
  \end{center}
}

\newcommand*{\cvsubentry}[3]{
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{1pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \setlength\leftskip{0.2cm}
    \ifthenelse{\equal{#1}{}}
      {\subentrydatestyle{#2}}{}
    \ifthenelse{\equal{#1}{}}
      {}
      {\subentrypositionstyle{#1} & \subentrydatestyle{#2} \\}
    \ifthenelse{\equal{#3}{}}
      {}
      {\multicolumn{2}{L{17.0cm}}{\subdescriptionstyle{#3}} \\}
  \end{tabular*}
}


\newenvironment{cvhonors}{
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2mm}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{16.5cm} C{3cm} R{2.5cm}}
}{
    \end{tabular*}
}


\newcommand*{\cvhonor}[2]{
  \begin{tabular}[t]{@{}l@{\hfill}}
    \honortitlestyle{#1} \\
    \honordatestyle{#2}
  \end{tabular}
}

\newenvironment{cvskills}{
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2.0mm}
  \begin{center}
    \setlength\tabcolsep{1ex}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} l L{\textwidth * \real{0.9}}}
}{
    \end{tabular*}
  \end{center}
}

\newcommand*{\cvskill}[2]{
  \skilltypestyle{#1} & \skillsetstyle{#2} \\
}

\newenvironment{cvitems}{
  \vspace{-3.0mm}
  \begin{justify}
  \begin{itemize}[leftmargin=2ex, nosep, noitemsep]
    \setlength{\parskip}{1pt}
    \renewcommand{\labelitemi}{\bullet}
}{
  \end{itemize}
  \end{justify}
  \vspace{-3.5mm} 
}

\newcommand*{\cvproject}[2]{
  % \vspace{3.0mm}
  \color{black}
  \underline{\textbf{#1}} \\
  \begin{cvitems}
  \vspace{3mm}
    #2
  \end{cvitems}
}