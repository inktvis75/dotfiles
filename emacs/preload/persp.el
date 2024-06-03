(unless (package-installed-p 'persp-projectile)
  (package-install 'persp-projectile))

(use-package perspective
  :custom
  (persp-state-default-file "~/some_dir/emacs/persp_state")
  (persp-mode-prefix-key (kbd "C-0"))
  :init
  (persp-mode))
(require 'persp-projectile)

(define-key projectile-mode-map (kbd "s-s") 'projectile-persp-switch-project)
