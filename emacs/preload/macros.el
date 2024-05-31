(setq org-export-global-macros
      '(
        ("kbd" . "@@html:<kbd>$1</kbd>@@ @@latex:\\keystroke{$1}@@")
        ("kbdt" . "@@html:<kbd>TAB</kbd>@@ @@latex:\\Tab@@")
        ("kbda" . "@@html:<kbd>Alt</kbd>@@ @@latex:\\Alt@@")
        ("kbde" . "@@html:<kbd>Enter</kbd>@@ @@latex:\\Enter@@")
        ("kbdc" . "@@html:<kbd>Esc</kbd>@@ @@latex:\\Esc@@")
        ("kbdr" . "@@html:<kbd>Ctrl</kbd>@@ @@latex:\\Ctrl@@")
        ("kbdad" . "@@html:<kbd>&#8595;</kbd>@@ @@latex:\\DArrow@@")
        ("kbdau" . "@@html:<kbd>&#8593;</kbd>@@ @@latex:\\UArrow@@")
        ("kbdal" . "@@html:<kbd>&#8592;</kbd>@@ @@latex:\\LArrow@@")
        ("kbdar" . "@@html:<kbd>&&#8594;</kbd>@@ @@latex:\\RArrow@@")
       )
)
