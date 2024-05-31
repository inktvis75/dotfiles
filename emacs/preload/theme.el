;; Themes

;;; Install some extra themes

(unless (package-installed-p 'dracula-theme)
  (package-install 'dracula-theme))

(unless (package-installed-p 'monokai-theme)
  (package-install 'monokai-theme))

(unless (package-installed-p 'modus-themes)
  (package-install 'modus-themes))

(setq dracula-height-title-1 1.25)
(setq dracula-height-title-2 1.15)
(setq dracula-height-title-3 1.05)
(setq dracula-height-doc-title 1.4)
(setq dracula-alternate-mode-line-and-minibuffer t)

(setq monokai-height-minus-1 0.8
      monokai-height-plus-1 1.25
      monokai-height-plus-2 1.15
      monokai-height-plus-3 1.05
      monokai-height-plus-4 1.4)

;;; Set Theme

(setq prelude-theme nil)
(load-theme 'modus-operandi :no-confirm)
