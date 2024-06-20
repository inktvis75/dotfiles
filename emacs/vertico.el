; Vertico

(use-package vertico
  :straight (:files (:defaults "extensions/*"))
  :bind (:map vertico-map
              ("C-j" . vertico-next)
              ("C-k" . vertico-previous)
              ("M-j" . vertico-next)
              ("M-k" . vertico-previous)
              ("C-f" . vertico-exit)
              :map minibuffer-local-map
              ("M-h" . backward-kill-word))
  :custom
  (vertico-cycle t)
  (vertico-resize t)
  :init
  (vertico-mode)
  :config
  (vertico-mouse-mode))

;; configure directory extension.
(use-package vertico-directory
  :straight nil
  :load-path "straight/repos/vertico/extensions"
  :after vertico
  :ensure nil
  :bind (:map vertico-map
              ("RET" . vertico-directory-enter)
              ("DEL" . vertico-directory-delete-char)
              ("M-DEL" . vertico-directory-delete-word)))
