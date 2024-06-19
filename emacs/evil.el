(use-package evil
  :straight t
  :init
  (setq evil-want-integration t)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-keybinding nil)
  (setq evil-search-module 'evil-search)
  (setq evil-split-window-below t)
  (setq evil-vsplit-window-right t)
  (unless (display-graphic-p)
    (setq evil-want-C-i-jump nil))
  :config
  (evil-mode 1)
  (when (fboundp #'undo-tree-undo)
    (evil-set-undo-system 'undo-tree))
  (when (fboundp #'general-define-key)
    (general-define-key
     :states '(motion)
     "ze" nil)
  )
)

(use-package evil-surround
  :straight t
  :after evil
  :config
  (global-evil-surround-mode 1)
)

(use-package evil-commentary
  :straight t
  :after evil
  :config
  (evil-commentary-mode)
)
(use-package evil-collection
  :straight t
  :after evil
  :config
  (evil-collection-init)
)
