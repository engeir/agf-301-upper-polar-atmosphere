\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myclass}[2011/12/23 My Class]

%% Article options
\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{book}
}

%% Custom package options
\DeclareOption{sans}{
  \PassOptionsToPackage{\CurrentOption}{book_style}
}
\DeclareOption{roman}{
  \PassOptionsToPackage{\CurrentOption}{book_style}
}
\DeclareOption{small_title}{
  \PassOptionsToPackage{\CurrentOption}{book_style}
}
\DeclareOption{section_equation}{
  \PassOptionsToPackage{\CurrentOption}{book_style}
}

%% Fallback
\DeclareOption*{
  \ClassWarning{myclass}{Unknown option '\CurrentOption'}
}

%% Execute default options
\ExecuteOptions{10pt}

%% Process given options
\ProcessOptions\relax

%% Load base
\LoadClass[a4paper,oneside]{book}

%% Load additional packages and commands.
\RequirePackage{book_style}

%% Additional TeX/LaTeX code...

\endinput
