;;; prelude-modules.el --- A listing of modules to load on startup

;;; General productivity tools

(require 'prelude-ivy) 
(require 'prelude-vertico) 
(require 'prelude-company)

;;; Vim emulation
(require 'prelude-evil)

;;; Org-mode 
(require 'prelude-org)

;;; Programming languages support
(require 'prelude-c)
(require 'prelude-css)
(require 'prelude-emacs-lisp)
(require 'prelude-js)
(require 'prelude-latex)
(require 'prelude-lisp) 
(require 'prelude-lsp) 
(require 'prelude-perl)
(require 'prelude-python)
(require 'prelude-shell)
(require 'prelude-web) 
(require 'prelude-xml)
(require 'prelude-yaml)
(provide 'prelude-modules)

;;; prelude-modules.el ends here
