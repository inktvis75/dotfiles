(use-package yasnippet-snippets
  :disabled
  :straight t)

(use-package yasnippet
  :straight t
  :config
  (setq yas-snippet-dirs
   `(,(concat (expand-file-name user-emacs-directory) "snippets")
    )
  )
)
