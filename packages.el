(setq piwonka-spacemacs-packages
      '(
        org-journal
        ag
        ))

;; List of packages to exclude.
(setq piwonka-spacemacs-excluded-packages '())

(defun piwonka-spacemacs/init-org-journal ()
  "Initialize Piwonka Preferences"
  (use-package org-journal
    :config
    (progn
      (setq org-journal-dir "~/Documents/journal/")
    )))

(defun piwonka-spacemacs/init-ag ()
  "Initialize Piwonka Preferences"
  (use-package ag)
)
