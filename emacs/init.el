; Appearance
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(setq visible-bell t)
(setq warning-minimum-level :error)

; Other Defaults
(setq tab-always-indent nil)
(setq-default default-tab-width 4)
(setq-default tab-width 4)
(setq-default evil-indent-convert-tabs nil)
(setq-default indent-tabs-mode nil)
(setq-default evil-shift-round nil)

; Backup
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
     kept-new-versions 6
     kept-old-versions 2
     version-control t
)

; Package Management
(defvar bootstrap-version)
(let ((bootstrap-file
      (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
      (unless (file-exists-p bootstrap-file)
      (with-current-buffer
         (url-retrieve-synchronously
          "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
           'silent 'inhibit-cookies)
         (goto-char (point-max))
         (eval-print-last-sexp)))
      (load bootstrap-file nil 'nomessage)
      )
(straight-use-package 'use-package)

;; Personal Configuration
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")
        )
)

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir))
)

(load-user-file "shell.el")
(load-user-file "theme.el")
(load-user-file "undo.el")
(load-user-file "treemacs.el")
(load-user-file "whichkey.el")
(load-user-file "evil.el")
(load-user-file "dashboard.el")
(load-user-file "lsp.el")
(load-user-file "complete.el")
(load-user-file "company.el")
(load-user-file "snippets.el")
(load-user-file "treesitter.el")
(load-user-file "projectile.el")
(load-user-file "magit.el")
(load-user-file "org.el")
(load-user-file "spell.el")
(load-user-file "pdf.el")
(load-user-file "lilypond.el")

