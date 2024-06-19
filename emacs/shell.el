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
