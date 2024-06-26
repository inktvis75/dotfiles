(use-package company
  :straight t
  :config
  (global-company-mode)
  (setq company-idle-delay 0.2)
  (setq company-dabbrev-downcase nil)
  (setq company-show-numbers t)
  :init
  (use-package company-ansible :straight t :defer t)
  :hook 
  (after-init . global-company-mode)
  (yaml-mode . (lambda () (add-to-list 'company-backends 'company-ansible)))
)
(use-package company-fuzzy
  :after company
  :straight t
  :diminish
  :config
  (global-company-fuzzy-mode 1)
)

(use-package company-quickhelp
  :straight t
  :after company
  :config
  (company-quickhelp-mode 1)
)

(use-package company-box
  :straight t
  :if (display-graphic-p)
  :after (company)
  :hook (company-mode . company-box-mode)
) 
