(setq piwonka-spacemacs-packages
      '(
        ag
        graphviz-dot-mode
        ))

;; List of packages to exclude.
(setq piwonka-spacemacs-excluded-packages '())

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

