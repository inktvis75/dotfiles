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
