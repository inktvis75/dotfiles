(use-package dashboard
    :straight t
    :init
    (use-package emacs
      :custom
      (recentf-max-menu-items 25)
      (recentf-max-saved-items 25)
      :config
      (recentf-mode 1)
      )
    :custom
    (initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
    (dashboard-startup-banner 'official)
    (dashboard-set-heading-icons t)
    (dashboard-set-file-icons t)
    (dashboard-set-init-info t)
    (dashboard-center-content t)
    (dashboard-items '((recents . 5)(projects . 5)))

    :config
    (dashboard-setup-startup-hook))
