;; Dashboard https://github.com/emacs-dashboard/emacs-dashboard 

(use-package nerd-icons
  :ensure t)

(setq initial-buffer-choice (lambda () (get-buffer-create dashboard-buffer-name)))
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(setq dashboard-items '((recents   . 5)
                        (projects  . 5)
                        ))

(setq dashboard-display-icons-p t)
(setq dashboard-icon-type 'nerd-icons)
(setq dashboard-set-file-icons t)
(setq dashboard-projects-switch-function 'projectile-persp-switch-project)

(setq dashboard-center-content t)
(setq dashboard-vertically-center-content t)

