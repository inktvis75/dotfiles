; Hugo
(use-package ox-hugo
  :straight t
  :after ox
)
(use-package easy-hugo
  :straight t
  :config
  (evil-make-overriding-map easy-hugo-mode-map 'normal)
  :init
   (setq easy-hugo-server-flags "-D") 
   (setq easy-hugo-url "https://www.linvirt.nl")
   (setq easy-hugo-basedir "~/Websites/linvirt.nl/")
   (setq easy-hugo-postdir "content/blog")
   (setq easy-hug-default-ext ".org")
)
