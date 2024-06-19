(define-key key-translation-map (kbd "<s-mouse-1>") (kbd "<mouse-2>"))

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(use-package flyspell-correct
  :after flyspell
  :straight t 
  :bind (:map flyspell-mode-map ("C-;" . flyspell-correct-wrapper))
)

(use-package flyspell-correct-ivy
  :straight t           
  :after flyspell-correct
)
