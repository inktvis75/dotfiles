(setq org-publish-project-alist 
      '(("org"
        :base-directory "./"
        :publishing-function org-html-publish-to-html
        :publishing-directory "output/html"
        :with-author nil
        :with-creator nil            
        :with-toc nil               
        :section-numbers nil)
))
