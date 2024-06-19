; Theme
(straight-use-package 'modus-themes)
(load-theme 'modus-vivendi-tritanopia :no-confirm)

; Icons
(use-package all-the-icons
  :if (display-graphic-p)
  :straight t
)
(use-package nerd-icons
  :if (display-graphic-p)
  :straight t
)

; Distinguish Buffers
(use-package solaire-mode
  :if (display-graphic-p)
  :straight t
  :init (solaire-global-mode +1)
)

; Automatic Resizing Windows
(use-package golden-ratio
  :if (display-graphic-p)
  :straight t
  :init (golden-ratio-mode 1)
)

