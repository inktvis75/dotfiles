(use-package projectile
  :diminish
  :bind
  ("M-o p" . counsel-projectile-switch-project)
  :config
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map))
