(setq piwonka-spacemacs-packages
      '(
        org-journal
        ag
        graphviz-dot-mode
        ))

;; List of packages to exclude.
(setq piwonka-spacemacs-excluded-packages '())

(defun piwonka-spacemacs/init-org-journal ()
  "Initialize Piwonka Preferences"
  (use-package org-journal
    :config
    (progn
      (setq org-journal-dir "~/ws/orgmode/src/PiwonkaOrgMode/journal/")
;      (setq org-journal-file-format "%Y%m%d.org")
;      (setq org-agenda-file-regexp "\\`[^.].*\\.org'\\|[0-9]+")
    )))

(defun piwonka-spacemacs/init-ag ()
  "Initialize Piwonka Preferences"
  (use-package ag)
  )

(defun piwonka-spacemacs/init-graphviz-dot-mode ()
  "Initialize Piwonka Preferences"
  (use-package graphviz-dot-mode
    :ensure t
    :config
    (setq graphviz-dot-indent-width 4))
  )

