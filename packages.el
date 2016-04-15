(setq piwonka-spacemacs-packages
      '(
        org-journal
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
