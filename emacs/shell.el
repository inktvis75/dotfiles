; Environment Variables
(use-package exec-path-from-shell
  :straight t
)

; Shell
(setq-default shell-file-name "/opt/local/bin/zsh")
(setq-default explicit-shell-file-name "/opt/local/bin/zsh")
(setq explicit-zsh-args '("--interactive" "--login"))
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)
)

; Terminal
(use-package vterm
  :straight t
  :custom (vterm-install t)
  :config
  (setq vterm-always-compile-module t)
  (setq vterm-buffer-name-string "vterm %s")
  (add-hook 'vterm-mode-hook
            (lambda () (global-hl-line-mode 0)))
  (setq vterm-max-scrollback 10000)
)

