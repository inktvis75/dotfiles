; Company
(add-hook 'after-init-hook 'global-company-mode
          
; YAML + Ansible
(use-package yaml-mode)
(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

; LSP
(use-package lsp-mode
:init
(setq lsp-keymap-prefix "C-c l")
:commands lsp)
(use-package lsp-ui)
