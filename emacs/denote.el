(use-package denote
  :straight t
  :config
  (setq denote-directory (expand-file-name "~/Training/Notes"))
  (setq denote-known-keywords '("ansible, kubernetes, linux, lpi"))
  :hook (dired-mode . denote-dired-mode)
)
