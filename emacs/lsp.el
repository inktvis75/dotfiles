(use-package lsp-mode
    :straight t
    :custom
    (gc-cons-threshold 100000000) ;; set per the lsp-doctor recommendation
    (read-process-output-max (* 1024 1024)) ;; same reason ^
    (lsp-keymap-prefix "C-c l")
    :hook (
           (yaml-mode . lsp)
           (lsp-mode . lsp-enable-which-key-integration))
    :commands lsp
)

(use-package lsp-ui
    :straight t
    :hook (lsp-mode . lsp-ui-mode)
    :commands lsp-ui-mode
)

(use-package lsp-ivy
    :straight t
    :after lsp-mode
)

(use-package lsp-treemacs
    :straight t
    :after lsp-mode
    :commands lsp-treemacs-errors-list
)

(use-package lsp-pyright
    :straight t
    :after lsp
    :hook (python-mode . (lambda () (require 'lsp-pyright) (lsp-deferred)))
    :init (setq lsp-pyright-python-executable-cmd "python3")
)
