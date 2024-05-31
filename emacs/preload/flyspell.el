(unless (package-installed-p 'flyspell-correct)
  (package-install 'flyspell-correct))

(unless (package-installed-p 'flyspell-correct-ivy)
  (package-install 'flyspell-correct-ivy))

(define-key key-translation-map (kbd "<s-mouse-1>") (kbd "<mouse-2>"))

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(use-package flyspell-correct
  :after flyspell
  :bind (:map flyspell-mode-map ("C-;" . flyspell-correct-wrapper)))

(use-package flyspell-correct-ivy
  :after flyspell-correct
  :bind (:map modi-mode-map ("<f9>" . flyspell-correct-word-generic)))
