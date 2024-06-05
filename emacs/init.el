;; Appearance
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(setq visible-bell t)

; Packages
(require 'cl-lib)
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(when (not package-archive-contents)
  (package-refresh-contents))

(setq cfg-var:packages '(
  modus-themes
  treesit-auto
  dashboard
  nerd-icons
  evil
  evil-surround
  evil-nerd-commenter
  org
  projectile
  persp-projectile
  treemacs
  real-auto-save
  vertico
  flyspell-correct
  magit
  exec-path-from-shell
  ))

(defun cfg:install-packages ()
    (let ((pkgs (cl-remove-if #'package-installed-p cfg-var:packages)))
        (when pkgs
            (message "%s" "Emacs refresh packages database...")
            (package-refresh-contents)
            (message "%s" " done.")
            (dolist (p cfg-var:packages)
                (package-install p)))))

(cfg:install-packages)

; Shell
(setq-default shell-file-name "/opt/local/bin/zsh")
(setq-default explicit-shell-file-name "/opt/local/bin/zsh")
(setq explicit-zsh-args '("--interactive" "--login"))
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


; Autosave 
(add-hook 'prog-mode-hook 'real-auto-save-mode)

;; Theme
(setq prelude-theme nil)
(load-theme 'modus-operandi :no-confirm)

;; Tree Sitter
(use-package treesit-auto
  :config
  (treesit-auto-add-to-auto-mode-alist 'all))

;; Personal Configuration
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(load-user-file "evil.el")
(load-user-file "treemacs.el")
(load-user-file "projectile.el")
(load-user-file "persp.el")
(load-user-file "orgmode.el")
(load-user-file "org-edu-html.el")
(load-user-file "dashboard.el")
(load-user-file "vertico.el")
(load-user-file "spell.el")
(load-user-file "magit.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("17b6c3e14c4aa2c69ed4246272b5382fc0630989921007b3f7cf21a01bf3365e" "52632b69c2813771327a2c22f51ccaca466ba3cc1aa8f3bf2d613573ea934993" default))
 '(package-selected-packages
   '(web-mode vertico treesit-auto treemacs-tab-bar treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil real-auto-save orderless nerd-icons modus-themes flyspell-correct flx evil-surround evil-nerd-commenter dashboard amx))
 '(safe-local-variable-values
   '((eval message "Project directory set to `%s'." my-project-path)
     (eval set
	   (make-local-variable 'my-project-path)
	   (file-name-directory
	    (let
		((d
		  (dir-locals-find-file "./")))
	      (if
		  (stringp d)
		  d
		(car d))))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
