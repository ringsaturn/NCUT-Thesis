%%
%% This is file `chinathesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% chinathesis.dtx  (with options: `class')
%% 
%% Copyright (C) 2015-2018 by Zeping Lee <zepinglee AT gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{chinathesis}
  [2018/09/19 v1.0 A template framework for Chinese dissertations]
\newif\ifustc@doctor
\newif\ifustc@master
\newif\ifustc@bachelor
\newif\ifustc@english
\newif\ifustc@numerical
\newif\ifustc@super
\newif\ifustc@pdf
\DeclareOption{doctor}{\ustc@doctortrue\ustc@masterfalse\ustc@bachelorfalse}
\DeclareOption{master}{\ustc@doctorfalse\ustc@mastertrue\ustc@bachelorfalse}
\DeclareOption{bachelor}{\ustc@doctorfalse\ustc@masterfalse\ustc@bachelortrue}
\DeclareOption{chinese}{\ustc@englishfalse}
\DeclareOption{english}{\ustc@englishtrue\ustc@arabictrue}
\DeclareOption{print}{\ustc@pdffalse}
\DeclareOption{pdf}{\ustc@pdftrue}
\DeclareOption{super}{\ustc@numericaltrue\ustc@supertrue}
\DeclareOption{numbers}{\ustc@numericaltrue\ustc@superfalse}
\DeclareOption{authoryear}{\ustc@numericalfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ExecuteOptions{doctor,chinese,print,super}
\ProcessOptions\relax
\ifustc@english
  \PassOptionsToClass{scheme=plain}{ctexbook}
\fi
\ifustc@pdf
  \PassOptionsToClass{oneside}{book}
\fi
\PassOptionsToPackage{quiet}{xeCJK}
\LoadClass[UTF8,a4paper,openright,zihao=-4]{ctexbook}[2016/05/16]
\@ifclasslater{ctexbook}{2016/05/16}{}{
  \ClassError{chinathesis}{%
    This template requires TeX Live\MessageBreak 2016 or later version}{}
}
\RequirePackage{etoolbox}
\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{titletoc}
\RequirePackage[perpage]{footmisc}
\RequirePackage{caption}
\RequirePackage{calc}
\RequirePackage{amsthm}
\ifustc@numerical
  \PassOptionsToPackage{sort&compress}{natbib}
\fi
\RequirePackage{natbib}
\RequirePackage{hyperref}
\newcommand\ustc@strifeq{\csname str_if_eq_x:nnTF\endcsname}
\newcommand\ustc@fontset{\csname g__ctex_fontset_tl\endcsname}
\ustc@strifeq{\ustc@fontset}{fandol}{
  \setmainfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyretermes}
  \setsansfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyreheros}
  \setmonofont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Scale          = MatchLowercase,
  ]{texgyrecursor}
  \ClassWarningNoLine{chinathesis}{%
    You are using Fandol font family.\MessageBreak
    Some glyphs may be missing.\MessageBreak
    Please switch to a high-quality font set
  }
}{
  \setmainfont{Times New Roman}
  \setsansfont{Arial}
  \ustc@strifeq{\ustc@fontset}{mac}{
    \setmonofont[Scale=MatchLowercase]{Menlo}
  }{
    \setmonofont[Scale=MatchLowercase]{Courier New}
  }
}
\ustc@strifeq{\ustc@fontset}{mac}{
  \setCJKmainfont[
       UprightFont = * Light,
          BoldFont = * Bold,
        ItalicFont = Kaiti SC,
    BoldItalicFont = Kaiti SC Bold,
  ]{Songti SC}
  \setCJKsansfont{Heiti SC}
  \setCJKfamilyfont{zhsong}[
       UprightFont = * Light,
          BoldFont = * Bold,
  ]{Songti SC}
  \setCJKfamilyfont{zhhei}{Heiti SC}
  \setCJKfamilyfont{zhkai}[BoldFont=Kaiti SC Bold]{Kaiti SC}
}{
  \ustc@strifeq{\ustc@fontset}{windows}{
    \IfFileExists{C:/bootfont.bin}{
      \setCJKmainfont[AutoFakeBold,ItalicFont=KaiTi_GB2312]{SimSun}
    }{
      \setCJKmainfont[AutoFakeBold,ItalicFont=KaiTi]{SimSun}
    }
    \setCJKsansfont[AutoFakeBold]{SimHei}
    \setCJKfamilyfont{zhsong}[AutoFakeBold]{SimSun}
    \setCJKfamilyfont{zhhei}[AutoFakeBold]{SimHei}
  }{
    \ustc@strifeq{\ustc@fontset}{adobe}{
      \setCJKmainfont[
        AutoFakeBold,
        ItalicFont=AdobeKaitiStd-Regular,
      ]{AdobeSongStd-Light}
      \setCJKsansfont[AutoFakeBold]{AdobeHeitiStd-Regular}
      \setCJKfamilyfont{zhsong}[AutoFakeBold]{AdobeSongStd-Light}
      \setCJKfamilyfont{zhhei}[AutoFakeBold]{AdobeHeitiStd-Regular}
    }{}
  }
}
\ustc@strifeq{\ustc@fontset}{mac}{
  \newfontfamily\ustc@circlefont{Songti SC Light}
}{
  \ustc@strifeq{\ustc@fontset}{windows}{
    \newfontfamily\ustc@circlefont{SimSun}
  }{
    \newfontfamily\ustc@circlefont{xits-regular.otf}
  }
}
\newdimen\bp@
\bp@=1bp
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12\bp@}{20\bp@}%
  \abovedisplayskip 12\bp@ \@plus3\bp@ \@minus7\bp@
  \abovedisplayshortskip \z@ \@plus3\bp@
  \belowdisplayshortskip 6.5\bp@ \@plus3.5\bp@ \@minus3\bp@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI}
\normalsize
\renewcommand\small{%
  \@setfontsize\small{10.5\bp@}{17.5\bp@}%
  \abovedisplayskip 10.5\bp@ \@plus3\bp@ \@minus6\bp@
  \abovedisplayshortskip \z@ \@plus3\bp@
  \belowdisplayshortskip 6.5\bp@ \@plus3.5\bp@ \@minus3\bp@
  \belowdisplayskip \abovedisplayskip
}
\renewcommand\footnotesize{%
  \@setfontsize\footnotesize{9\bp@}{15\bp@}%
  \abovedisplayskip 9\bp@ \@plus2\bp@ \@minus5\bp@
  \abovedisplayshortskip \z@ \@plus3\bp@
  \belowdisplayshortskip 6\bp@ \@plus3\bp@ \@minus3\bp@
  \belowdisplayskip \abovedisplayskip
}
\renewcommand\scriptsize{\@setfontsize\scriptsize{7.5\bp@}{12.5\bp@}}
\renewcommand\tiny{\@setfontsize\tiny{6.5\bp@}{10.83\bp@}}
\renewcommand\large{\@setfontsize\large{15\bp@}{25\bp@}}
\renewcommand\Large{\@setfontsize\Large{18\bp@}{30\bp@}}
\renewcommand\LARGE{\@setfontsize\LARGE{22\bp@}{36.67\bp@}}
\renewcommand\huge{\@setfontsize\huge{24\bp@}{40\bp@}}
\renewcommand\Huge{\@setfontsize\Huge{26\bp@}{43.33\bp@}}
\linespread{1}\selectfont
\newcommand\ustc@fontsize[2]{%
  \fontsize{#1}{#2}\selectfont}
\newcommand\ustc@abstractname{摘\hspace{2\ccwd}要}
\newcommand\ustc@enabstractname{Abstract}
\ifustc@english
  \renewcommand\figurename{Fig.}
  \newcommand\ustc@acknowledgementsname{Acknowledgements}
  \newcommand\ustc@publicationsname{Publications}
  \newcommand\ustc@assertionname{Assertion}
  \newcommand\ustc@axiomname{Axiom}
  \newcommand\ustc@corollaryname{Corollary}
  \newcommand\ustc@definitionname{Definition}
  \newcommand\ustc@examplename{Example}
  \newcommand\ustc@lemmaname{Lemma}
  \newcommand\ustc@proofname{Proof}
  \newcommand\ustc@propositionname{Proposition}
  \newcommand\ustc@remarkname{Remark}
  \newcommand\ustc@theoremname{Theorem}
\else
  \renewcommand\contentsname{目\hspace{2\ccwd}录}
  \newcommand\ustc@acknowledgementsname{致\hspace{2\ccwd}谢}
  \newcommand\ustc@acknowledgementstocname{致谢}
  \newcommand\ustc@publicationsname{在读期间发表的学术论文与取得的研究成果}
  \renewcommand\listfigurename{插图清单}
  \renewcommand\listtablename{表格清单}
  \newcommand\ustc@assertionname{断言}
  \newcommand\ustc@axiomname{公理}
  \newcommand\ustc@corollaryname{推论}
  \newcommand\ustc@definitionname{定义}
  \newcommand\ustc@examplename{例}
  \newcommand\ustc@lemmaname{引理}
  \newcommand\ustc@proofname{证明}
  \newcommand\ustc@propositionname{命题}
  \newcommand\ustc@remarkname{注}
  \newcommand\ustc@theoremname{定理}
\fi
\geometry{
  paper      = a4paper,
  vmargin    = 2.54cm,
  hmargin    = 3.17cm,
  headheight = 0.75cm,
  headsep    = 0.29cm,
  footskip   = 0.79cm,
}
\def\ustc@define@term#1#2{%
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname ustc@#1\endcsname{##1}%
  }%
  \csname #1\endcsname{#2}%
}
\ustc@define@term{title}{论文题目}
\ustc@define@term{author}{XXX}
\ustc@define@term{major}{XXX}
\ustc@define@term{supervisor}{XXX\quad 教授}
\ustc@define@term{cosupervisor}{}
\ustc@define@term{date}{\zhnumsetup{time=Chinese}\zhtoday}
\ustc@define@term{professionaltype}{专业学位类型}
\ustc@define@term{secretlevel}{}
\ustc@define@term{secretyear}{}
\ustc@define@term{entitle}{Title}
\ustc@define@term{enauthor}{XXX}
\ustc@define@term{enmajor}{XXX}
\ustc@define@term{ensupervisor}{Prof. XXX}
\ustc@define@term{encosupervisor}{}
\ustc@define@term{endate}{\CTEX@todayold}
\ustc@define@term{enprofessionaltype}{Professional degree type}
\ustc@define@term{ensecretlevel}{}
\ustc@define@term{keywords}{}
\ustc@define@term{enkeywords}{}
\newcommand\ustc@universityname{中国大学}
\newcommand\ustc@enuniversityname{Unversity of China}
\ifustc@doctor
  \newcommand\ustc@thesisname{博士学位论文}
  \newcommand\ustc@enthesisname{A dissertation for doctor's degree}
\else
  \ifustc@master
    \newcommand\ustc@thesisname{硕士学位论文}
    \newcommand\ustc@enthesisname{A dissertation for master's degree}
  \else
    \newcommand\ustc@thesisname{学士学位论文}
    \newcommand\ustc@enthesisname{A dissertation for bachelor's degree}
  \fi
\fi
\newcommand\ustc@makezhtitle{%
  \begin{titlepage}%
    \centering
    \parbox[t][0.6cm][t]{\textwidth}{%
      \raggedleft\fangsong\large\null\ustc@secretlevel\par}\par
    \vskip 0.5cm%
    {\sffamily\bfseries\fontsize{36\bp@}{36\bp@}\selectfont
      \ustc@universityname\par}
    \vskip 0.6cm%
    {\sffamily\fontsize{56\bp@}{56\bp@}\selectfont\ustc@thesisname\par}%
    \vskip 2.0cm%
    \includegraphics[height=4.1cm]{figures/chinathesis-logo.pdf}\par
    \vskip 0.9cm%
    \begin{minipage}[t][3.5cm][c]{\textwidth}%
      \centering\sffamily\bfseries\Huge\ustc@title\par
    \end{minipage}\par
    \vskip 0.6cm%
    {\large
      \begin{tabular}{@{}l@{\hspace{\ccwd}}l@{}}%
        \textsf{作者姓名：} & \ustc@author \\
        \textsf{学科专业：} & \ustc@major \\
        \textsf{导师姓名：} & \ustc@supervisor\quad\ustc@cosupervisor \\
        \textsf{完成时间：} & \ustc@date
      \end{tabular}\par}%
  \end{titlepage}%
}
\newcommand\ustc@supervisorline{%
  \ifx\ustc@encosupervisor\@empty
    Supervisor: \ustc@ensupervisor
  \else
    Supervisors: \ustc@ensupervisor, \ustc@encosupervisor
  \fi}
\newcommand\ustc@makeentitle{%
  \begin{titlepage}%
    \centering
    \parbox[t][0.4cm][t]{\textwidth}{%
      \raggedleft\large\null\ustc@ensecretlevel\par}\par
    \vskip 0.5cm%
    {\sffamily\LARGE\ustc@enuniversityname\par}%
    {\sffamily\Huge\ustc@enthesisname\par}%
    \vskip 2.5cm%
    \includegraphics[height=4.5cm]{figures/chinathesis-logo.pdf}\par
    \vskip 0.5cm%
    \begin{minipage}[t][4.5cm][c]{\textwidth}%
      \centering\sffamily\bfseries\Huge\ustc@entitle\par
    \end{minipage}\par
    \vskip 1.6cm%
    {\large
      \begin{tabular}{@{}l@{}}
        Author:        \ustc@enauthor \\
        Speciality:    \ustc@enmajor \\
        \ustc@supervisorline \\
        Finished time: \ustc@endate
      \end{tabular}\par}%
  \end{titlepage}%
}
\renewcommand\maketitle{%
  \pagenumbering{gobble}%
  \pdfbookmark[0]{封面}{titlepage}%
  \ustc@makezhtitle
  \cleardoublepage
  \pdfbookmark[0]{Title page}{entitlepage}%
  \ustc@makeentitle
  \cleardoublepage
}
\newcommand\ustc@originality{%
本人声明所呈交的学位论文，是本人在导师指导下进行研究工作所取得的成果。
除已特别加以标注和致谢的地方外，论文中不包含任何他人已经发表或撰写过
的研究成果。与我一同工作的同志对本研究所做的贡献均已在论文中作了明确的说明。}
\newcommand\ustc@authorization{%
作为申请学位的条件之一，学位论文著作权拥有者授权中国科学技术大学拥有
学位论文的部分使用权，即：学校有权按有关规定向国家有关部门或机构送交
论文的复印件和电子版，允许论文被查阅和借阅，可以将学位论文编入《中国
学位论文全文数据库》等有关数据库进行检索，可以采用影印、缩印或扫描等
复制手段保存、汇编学位论文。本人提交的电子文档的内容和纸质论文的内容
相一致。\par
保密的学位论文在解密后也遵守此规定。}
\newcommand\ustc@underline[2][3.2cm]{\underline{\hb@xt@ #1{\hss#2\hss}}}
\newcommand\ustc@checkbox{%
  \makebox[\z@][l]{$\square$}%
  \raisebox{-0.2ex}{\hspace{0.1em}$\checkmark$}%
}
\newcommand\makestatement{%
  \pdfbookmark[0]{原创性声明}{statement}%
  \begin{titlepage}%
    \null
    \vskip 0.3cm%
    {\centering\sffamily\ustc@fontsize{16\bp@}{32\bp@}%
      中国科学技术大学学位论文原创性声明\par}%
    \vskip 0.7cm%
    \ustc@originality\par
    \vskip 1.3cm%
    作者签名：\ustc@underline{}\hspace{2.7cm}%
    签字日期：\ustc@underline{}\par
    \vskip 1.9cm%
    {\centering\sffamily\ustc@fontsize{16\bp@}{32\bp@}%
      中国科学技术大学学位论文授权使用声明\par}
    \vskip 0.7cm%
    \ustc@authorization\par
    \vskip 0.6cm%
    \ifx\ustc@secretlevel\@empty
      \ustc@checkbox{} 公开\quad
      $\square$ 保密（\ustc@underline[0.85cm]{}年）\par
    \else
      $\square$ 公开\quad
      \ustc@checkbox{} 保密（\ustc@underline[0.8cm]{\ustc@secretyear}年）\par
    \fi
    \vskip 0.5cm%
    作者签名：\ustc@underline{}\hspace{2.7cm}%
    导师签名：\ustc@underline{}\par
    \vskip 0.5cm%
    签字日期：\ustc@underline{}\hspace{2.7cm}%
    签字日期：\ustc@underline{}\par
  \end{titlepage}
  \cleardoublepage
}%
\renewcommand{\headrulewidth}{0.4pt}
\fancypagestyle{ustc@headings}{
  \fancyhf{}
  \fancyhead[C]{\ustc@fontsize{10.5\bp@}{21\bp@}\leftmark}
  \fancyfoot[C]{\ustc@fontsize{10.5\bp@}{21\bp@}\thepage}}
\pagestyle{ustc@headings}
\newcommand\ustc@patchfailure[1]{%
  \ClassError{chinathesis}{Failed to patch command \protect#1.\MessageBreak
    Please contact the template author.%
  }{}%
}
\patchcmd\chaptermark{\MakeUppercase}{}{}{\ustc@patchfailure{\chaptermark}}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{Roman}}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\setcounter{secnumdepth}{5}
\newcommand\ustc@textcircled[1]{%
  \ifnum\value{#1}<21\relax
    {\ustc@circlefont\symbol{\numexpr\value{#1} + "245F\relax}}%
  \else
    \ClassError{chinathesis}{Cannot display more than 10 footnotes}{}%
  \fi
}
\ctexset{
  chapter = {
    format      = \centering\sffamily\bfseries\ustc@fontsize{16\bp@}{20.75\bp@},
    nameformat  = {},
    titleformat = {},
    number      = \thechapter,
    aftername   = \hspace{\ccwd},
    pagestyle   = ustc@headings,
  },
}
\@ifclasslater{ctexbook}{2016/09/21}{
  \ctexset{
    chapter = {
      beforeskip = 24\bp@,
      afterskip  = 18\bp@,
      fixskip    = true,
    },
  }
}{
  \ctexset{
    chapter = {
      beforeskip = -7\bp@, % 24bp - 31bp
      afterskip  =  8\bp@, % 18bp - 10bp
    },
  }
}
\ctexset{
  section = {
    format     = \sffamily\ustc@fontsize{14\bp@}{18.16\bp@},
    aftername  = \hspace{\ccwd},
    beforeskip = 24\bp@,
    afterskip  = 6\bp@,
  },
  subsection = {
    format     = \sffamily\ustc@fontsize{13\bp@}{16.86\bp@},
    aftername  = \hspace{\ccwd},
    indent     = 2\ccwd,
    beforeskip = 12\bp@,
    afterskip  = 6\bp@,
  },
  subsubsection = {
    format     = \sffamily\ustc@fontsize{12\bp@}{20\bp@},
    number     = \arabic{subsubsection},
    aftername  = .\hspace{0.5\ccwd},
    indent     = 2\ccwd,
    beforeskip = \z@,
    afterskip  = \z@,
  },
  paragraph = {
    format     = \rmfamily\ustc@fontsize{12\bp@}{20\bp@},
    number     = (\arabic{paragraph}),
    aftername  = \hspace{0.5\ccwd},
    indent     = 2\ccwd,
    beforeskip = \z@,
    afterskip  = \z@,
    runin      = false,
  },
  subparagraph = {
    format     = \rmfamily\ustc@fontsize{12\bp@}{20\bp@},
    number     = \ustc@textcircled{subparagraph},
    aftername  = \hspace{0.5\ccwd},
    indent     = 2\ccwd,
    beforeskip = \z@,
    afterskip  = \z@,
    runin      = false,
  },
}
\newcounter{ustc@pdfbookmark}
\NewDocumentCommand\ustc@chapter{o m}{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \addtocounter{ustc@pdfbookmark}\@ne
  \IfValueTF{#1}{%
    \pdfbookmark[0]{#1}{ustcchapter.\theustc@pdfbookmark}%
    \chaptermark{#1}%
  }{%
    \pdfbookmark[0]{#2}{ustcchapter.\theustc@pdfbookmark}%
    \chaptermark{#2}%
  }%
  \chapter*{#2}}
\newenvironment{abstract}{%
  \ustc@chapter{\ustc@abstractname}%
}{
  \par\null\par\noindent\hangindent=4\ccwd\relax
  \textbf{关键词}：\ustc@keywords
}
\newenvironment{enabstract}{%
  \@openrightfalse
  \ustc@chapter{\ustc@enabstractname}%
  \@openrighttrue
}{
  \par\null\par\noindent\hangindent=5.3em\relax
  \textbf{Key Words}: \ustc@enkeywords
}
\renewcommand\tableofcontents{%
  \ustc@chapter{\contentsname}%
  \@starttoc{toc}}
\renewcommand\listoffigures{%
  \ustc@chapter{\listfigurename}%
  \@starttoc{lof}}
\renewcommand\listoftables{%
  \ustc@chapter{\listtablename}%
  \@starttoc{lot}}
\newcommand\ustc@leaders{\titlerule*[0.5pc]{$\cdot$}}
\titlecontents{chapter}
  [\z@]
  {\addvspace{6\bp@}\ustc@fontsize{14\bp@}{20\bp@}}
  {\contentspush{\thecontentslabel\unskip\hskip\ccwd\relax}}
  {}{\ustc@leaders\ustc@fontsize{12\bp@}{20\bp@}\contentspage}
\titlecontents{section}
  [\ccwd]
  {\ustc@fontsize{12\bp@}{20\bp@}}
  {\contentspush{\thecontentslabel\hskip\ccwd\relax}}
  {}{\ustc@leaders\ustc@fontsize{12\bp@}{20\bp@}\contentspage}
\titlecontents{subsection}
  [2\ccwd]
  {\ustc@fontsize{10.5\bp@}{20\bp@}}
  {\contentspush{\thecontentslabel\hskip\ccwd\relax}}
  {}{\ustc@leaders\ustc@fontsize{12\bp@}{20\bp@}\contentspage}
\titlecontents{figure}
  [\ccwd]
  {\normalsize}
  {\thecontentslabel\hspace*{0.5em}}
  {}{\ustc@leaders\contentspage}
\titlecontents{table}
  [\ccwd]
  {\normalsize}
  {\thecontentslabel\hspace*{0.5em}}
  {}{\ustc@leaders\contentspage}
\setlength{\parskip}{\z@}
\renewcommand{\thefootnote}{\ustc@textcircled{footnote}}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.25\textwidth
  \kern2.6\p@}
\renewcommand\@makefntext[1]{%
  \parindent 2\ccwd\relax
  \noindent
  \hb@xt@2\ccwd{\hss\@makefnmark}#1}
\setlength\partopsep{\z@}
\newcommand\ustc@nolistsep{%
  \parsep \z@
  \topsep \z@
  \itemsep\z@
}
\def\@listi{\leftmargin\leftmargini
            \ustc@nolistsep}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \ustc@nolistsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \ustc@nolistsep}
\renewcommand\topfraction{.85}
\renewcommand\bottomfraction{.7}
\renewcommand\textfraction{.15}
\renewcommand\floatpagefraction{.66}
\renewcommand\dbltopfraction{.66}
\renewcommand\dblfloatpagefraction{.66}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\def\fps@figure{htbp}
\def\fps@table{htbp}
\DeclareCaptionLabelSeparator{zhspace}{\hspace{\ccwd}}
\captionsetup{
  format    = hang,
  font      = small,
  labelfont = bf,
  labelsep  = zhspace,
}
\captionsetup[figure]{
  aboveskip = 6\bp@,
  belowskip = {12\bp@-\intextsep},
}
\captionsetup[table]{
  aboveskip = 6\bp@,
  belowskip = 6\bp@,
}
\newcommand\note[1]{%
  \begingroup
  \captionsetup{
    format        = plain,
    font          = small,
    justification = justified,
    margin        = 2\ccwd,
    position      = bottom,
  }%
  \caption*{#1}%
  \endgroup
}
\unimathsetup{
  math-style = ISO,
  bold-style = ISO,
  nabla      = upright,
  partial    = upright,
}
\newcommand\ustc@mathfont{xits}
\@ifpackagelater{fontspec}{2017/01/20}{
  \IfFontExistsTF{STIX2Math.otf}{
    \renewcommand\ustc@mathfont{stix2}
  }{}
}{}
\ustc@strifeq{\ustc@mathfont}{stix2}{
  \setmathfont[StylisticSet=8]{STIX2Math.otf}
  \setmathfont[range={scr,bfscr},StylisticSet=1]{STIX2Math.otf}
  \setmathfont[range={\partial,\lbrace,\rbrace}]{xits-math.otf}
}{
  \ustc@strifeq{\ustc@mathfont}{xits}{
    \setmathfont[
      Extension    = .otf,
      BoldFont     = *bold,
      StylisticSet = 8,
    ]{xits-math}
    \setmathfont[range={cal,bfcal},StylisticSet=1]{xits-math.otf}
  }{}
}
\ifustc@english\else
  \def\mathellipsis{\cdots}
  \protected\def\le{\leqslant}
  \protected\def\ge{\geqslant}
  \AtBeginDocument{%
    \renewcommand\leq{\leqslant}%
    \renewcommand\geq{\geqslant}%
  }
  \removenolimits{%
    \int\iint\iiint\iiiint\oint\oiint\oiiint
    \intclockwise\varointclockwise\ointctrclockwise\sumint
    \intbar\intBar\fint\cirfnint\awint\rppolint
    \scpolint\npolint\pointint\sqint\intlarhk\intx
    \intcap\intcup\upint\lowint
  }
\fi
\AtBeginDocument{%
  \renewcommand{\Re}{\operatorname{Re}}%
  \renewcommand{\Im}{\operatorname{Im}}%
}
\AtBeginDocument{%
  \renewcommand\nabla{\mbfnabla}%
}
\newcommand\bm{\symbf}
\renewcommand\boldsymbol{\symbf}
\newcommand\square{\mdlgwhtsquare}
\newcommand\upe{\symup{e}}
\newcommand\upi{\symup{i}}
\newcommand\dif{\mathop{}\!\mathrm{d}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}

\newtheoremstyle{ustcplain}
    {}{}
    {}{2\ccwd}
    {\bfseries}{}
    {\ccwd}{}
\theoremstyle{ustcplain}
\newtheorem{theorem}                {\ustc@theoremname}     [chapter]
\newtheorem{assertion}  [theorem]   {\ustc@assertionname}
\newtheorem{axiom}      [theorem]   {\ustc@axiomname}
\newtheorem{corollary}  [theorem]   {\ustc@corollaryname}
\newtheorem{lemma}      [theorem]   {\ustc@lemmaname}
\newtheorem{proposition}[theorem]   {\ustc@propositionname}
\newtheorem{definition}             {\ustc@definitionname}  [chapter]
\newtheorem{example}                {\ustc@examplename}     [chapter]
\newtheorem*{remark}                {\ustc@remarkname}
\renewenvironment{proof}[1][\proofname]{\par
    \pushQED{\qed}%
    \normalfont \topsep6\p@\@plus6\p@\relax
    \trivlist
        \item\relax\hskip2\ccwd
        \textbf{#1}
        \hskip\ccwd\ignorespaces
    }{%
    \popQED\endtrivlist\@endpefalse
}
\renewcommand\proofname\ustc@proofname
\newcommand\bibstyle@super{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\newcommand\bibstyle@numbers{\bibpunct{[}{]}{,}{n}{,}{,}}
\newcommand\bibstyle@authoryear{\bibpunct{(}{)}{;}{a}{,}{,}}
\def\tmp@numerical{numerical}
\def\tmp@authoryear{authoryear}
\newcommand\ustcbibstyle[1]{%
  \def\ustc@arg{#1}%
  \ifx\ustc@arg\tmp@numerical
    \bibliographystyle{chinathesis-numerical}%
  \else
    \ifx\ustc@arg\tmp@authoryear
      \bibliographystyle{chinathesis-authoryear}%
    \else
      \ClassError{chinathesis}{Unknown argument #1.}%
        {It should be `numerical' or `authoryear'.}%
    \fi
  \fi
}
\ifustc@numerical
  \ifustc@super
    \citestyle{super}
  \else
    \citestyle{numbers}
  \fi
  \bibliographystyle{chinathesis-numerical}
\else
  \citestyle{authoryear}
  \bibliographystyle{chinathesis-authoryear}
\fi
\patchcmd{\NAT@citexnum}{%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\NAT@cmt#2\fi
  }{}%
  \NAT@mbox{\NAT@@close}%
}{%
  \NAT@mbox{\NAT@@close}%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\textsuperscript{#2}\fi
  }{}%
}{}{\ustc@patchfailure{\NAT@citexnum}}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa
\if*#2*\else#2\NAT@spacechar\fi
\unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close\if*#3*\else#3\fi}%
   \else #1\fi\endgroup}
\renewcommand\NAT@citenum%
    [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
        #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
\patchcmd{\NAT@citex}{%
  \if*#2*\else\NAT@cmt#2\fi
  \if\relax\NAT@date\relax\else\NAT@@close\fi
}{%
  \if\relax\NAT@date\relax\else\NAT@@close\fi
  \if*#2*\else\textsuperscript{#2}\fi
}{}{\ustc@patchfailure{\NAT@citex}}
\renewcommand\NAT@cite%
    [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
        #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
\patchcmd{\NAT@citexnum}{%
  \ifx\NAT@last@yr\relax
    \def@NAT@last@yr{\@citea}%
  \else
    \def@NAT@last@yr{--\NAT@penalty}%
  \fi
}{%
  \def@NAT@last@yr{-\NAT@penalty}%
}{}{\ustc@patchfailure{\NAT@citexnum}}
\DeclareRobustCommand\inlinecite{\@inlinecite}
\def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
\renewcommand\bibfont{\ustc@fontsize{10.5bp}{20bp}}
\setlength{\bibsep}{\z@}
\setlength{\bibhang}{2\ccwd}
\renewcommand\@biblabel[1]{[#1]\hfill}
\renewcommand\bibsection{%
  \@mainmatterfalse
  \chapter{\bibname}%
  \@mainmattertrue
}
\newenvironment{acknowledgements}{%
  \chapter[\ustc@acknowledgementstocname]{\ustc@acknowledgementsname}%
}{}
\newenvironment{publications}{\chapter{\ustc@publicationsname}}{}

\hypersetup{
  bookmarksnumbered  = true,
  bookmarksopen      = true,
  bookmarksopenlevel = 1,
  linktoc            = all,
}
\ifustc@pdf
  \hypersetup{
    colorlinks        = true,
    allcolors         = blue,
  }
\else
  \hypersetup{hidelinks}
\fi
\AtBeginDocument{%
  \ifustc@english
    \hypersetup{
      pdftitle={\ustc@entitle},
      pdfauthor={\ustc@enauthor},
    }%
  \else
    \hypersetup{
      pdftitle={\ustc@title},
      pdfauthor={\ustc@author},
    }%
  \fi
}
\pdfstringdefDisableCommands{
  \let\\\@empty
  \let\hspace\@gobble
}
\urlstyle{same}
\def\UrlBreaks{%
  \do\/%
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l%
     \do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L%
     \do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9\do=\do/\do.\do:%
  \do\*\do\-\do\~\do\'\do\"\do\-}
\Urlmuskip=0mu plus 0.1mu
\ifustc@english\else
  \def\equationautorefname~#1\null{公式~(#1)\null}
  \def\footnoteautorefname{脚注}
  \def\itemautorefname~#1\null{第~#1~项\null}
  \def\figureautorefname{图}
  \def\tableautorefname{表}
  \def\partautorefname~#1\null{第~#1~部分\null}
  \def\appendixautorefname{附录}
  \def\chapterautorefname~#1\null{第~#1~章\null}
  \def\sectionautorefname~#1\null{第~#1~节\null}
  \def\subsectionautorefname~#1\null{第~#1~小节\null}
  \def\subsubsectionautorefname~#1\null{第~#1~小小节\null}
  \def\paragraphautorefname~#1\null{第~#1~段\null}
  \def\subparagraphautorefname~#1\null{第~#1~小段\null}
  \def\theoremautorefname{定理}
  \def\HyRef@autopageref#1{\hyperref[{#1}]{第~\pageref*{#1} 页}}
\fi
\DeclareRobustCommand\cs[1]{\texttt{\char`\\#1}}
\newcommand\pkg{\textsf}
