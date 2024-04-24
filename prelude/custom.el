(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-babel-lilypond-commands '("/opt/homebrew/bin/lilypond" "open" "open"))
 '(package-selected-packages
   '(treemacs-projectile treemacs-evil ox-reveal treemacs dashboard yaml-mode web-mode company-anaconda anaconda-mode lsp-ui lsp-mode company-auctex cdlatex auctex json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company consult orderless vertico exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens operate-on-number nlinum move-text magit projectile imenu-anywhere hl-todo guru-mode git-modes git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major crux browse-kill-ring anzu ag ace-window htmlize))
 '(warning-suppress-log-types '((comp) (comp) (comp) (comp) (comp) (comp)))
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(prelude-require-packages '(
   dashboard
   treemacs
   treemacs-evil
   treemacs-projectile
   htmlize
   ox-reveal
   lsp-ui
))

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(require 'icomplete)
(fido-vertical-mode 1)

(require 'dashboard)
(setq dashboard-icon-type 'all-the-icons)
(setq dashboard-projects-backend 'projectile)
(setq dashboard-items '((recents   . 5)
                        (bookmarks . 5)
                        (projects  . 5)
                        (registers . 5)))
(setq dashboard-item-shortcuts '((recents   . "r")
                                 (bookmarks . "m")
                                 (projects  . "p")
                                 (registers . "e")))
(dashboard-setup-startup-hook)

(scroll-bar-mode -1)

(use-package treemacs
  :defer t
  :config
  (setq treemacs-indent-guide-style 'line)
  (treemacs-follow-mode t)
  (treemacs-git-mode 'deferred)
  (treemacs-indent-guide-mode t)
)

(use-package treemacs-evil
  :disabled t
  :after (treemacs evil)
)

(global-set-key [f12] 'treemacs)

(use-package lsp-ui)
(add-hook 'text-mode-hook #'flyspell-mode)
(add-hook 'prog-mode-hook #'flyspell-prog-mode)
