(use-package ivy
  :straight t
  :config
  (setq ivy-use-virtual-buffers t)
  (ivy-mode)
)

(use-package counsel
  :straight t
  :after ivy
  :config
  (counsel-mode)
)

(use-package swiper
  :defer t
  :straight t
)

(use-package ivy-rich
  :straight t
  :after ivy
  :config
  (ivy-rich-mode 1)
  (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line)
)

