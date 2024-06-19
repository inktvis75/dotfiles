(use-package projectile
  :straight t
  :config
  (projectile-mode +1)
  (setq projectile-project-search-path '("~/Training" "~/Documents"))
)

(use-package counsel-projectile
  :after (counsel projectile)
  :straight t
)
