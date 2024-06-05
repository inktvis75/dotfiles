;; Latex
(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
             '("koma-book"
                 "\\documentclass{scrbook}"
                ("\\chapter{%s}" . "\\chapter{%s}")
                ("\\section{%s}" . "\\section*{%s}")
                ("\\subsection{%s}" . "\\subsection*{%s}")
                ("\\paragraph{%s}" . "\\paragraph*{%s}")))
  (add-to-list 'org-latex-classes
             '("scrbook"
                 "\\documentclass{scrbook}"
                ("\\chapter{%s}" . "\\chapter{%s}")
                ("\\section{%s}" . "\\section*{%s}")
                ("\\subsection{%s}" . "\\subsection*{%s}")
                ("\\paragraph{%s}" . "\\paragraph*{%s}")))
  (add-to-list 'org-latex-classes
             '("memoir"
                 "\\documentclass{memoir}"
                ("\\section{%s}" . "\\section*{%s}")
                ("\\subsection{%s}" . "\\subsection*{%s}")
                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                ("\\paragraph{%s}" . "\\paragraph*{%s}")
                ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
)

(with-eval-after-load 'ox-beamer
  (add-to-list 'org-latex-classes
             '("beamer"
                 "\\documentclass\[presentation\]{beamer}"
                ("\\section{%s}" . "\\section*{%s}")
                ("\\subsection{%s}" . "\\subsection*{%s}")
                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))

  (add-to-list 'org-beamer-environments-extra
               '("onlyenv" "O" "\\begin{onlyenv}%a" "\\end{onlyenv}"))
)

(customize-set-value 'org-latex-with-hyperref nil)
(setq org-latex-listings 'minted)
(setq org-latex-packages-alist '(("outputdir=../build" "minted" nil)))
(setq org-latex-pdf-process (list "latexmk -f -lualatex %f"))
(setq org-latex-pdf-process '("latexmk -shell-escape -f -lualatex %f"))

;; Macros
(setq org-export-global-macros
      '(
        ("kbd" . "@@html:<kbd>$1</kbd>@@ @@latex:\\keystroke{$1}@@")
        ("kbdt" . "@@html:<kbd>TAB</kbd>@@ @@latex:\\Tab@@")
        ("kbda" . "@@html:<kbd>Alt</kbd>@@ @@latex:\\Alt@@")
        ("kbde" . "@@html:<kbd>Enter</kbd>@@ @@latex:\\Enter@@")
        ("kbdc" . "@@html:<kbd>Esc</kbd>@@ @@latex:\\Esc@@")
        ("kbdr" . "@@html:<kbd>Ctrl</kbd>@@ @@latex:\\Ctrl@@")
        ("kbdad" . "@@html:<kbd>&#8595;</kbd>@@ @@latex:\\DArrow@@")
        ("kbdau" . "@@html:<kbd>&#8593;</kbd>@@ @@latex:\\UArrow@@")
        ("kbdal" . "@@html:<kbd>&#8592;</kbd>@@ @@latex:\\LArrow@@")
        ("kbdar" . "@@html:<kbd>&&#8594;</kbd>@@ @@latex:\\RArrow@@")
       )
)