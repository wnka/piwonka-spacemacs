;; Make it so I can pull up helm more easily
(global-set-key "\C-x\C-m" 'helm-M-x)
(global-set-key "\C-xm" 'helm-M-x)

;; Make jumping around lists/parens easy
(global-set-key "\M-n" 'forward-list)
(global-set-key "\M-p" 'backward-list)

;; Display continuous lines
(setq-default truncate-lines nil)
;; truncate even even when screen is split into multiple windows
(setq-default truncate-partial-width-windows nil)

;; ORG
(setq wnka/org-path "~/Documents/org/")
(setq wnka/org-notes-path "~/Documents/notes/")
(setq org-agenda-files (mapcar #'(lambda (orgfile) (concat wnka/org-path orgfile)) 
                               (list 
                                "work.org"
                                "work.org_archive"
                                )))

(setq org-agenda-custom-commands
      '(("n" todo "NEXT") ; Todo items that are marked "NEXT"
        ("N" todo-tree "NEXT") ; Todo items that are marked "NEXT"
        ))

(setq org-agenda-sorting-strategy '(time-up priority-down category-up))
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-window-setup 'current-window)
(setq org-deadline-warning-days 7)

(setq org-use-property-inheritance t)

(setq org-export-section-number-format '((("1" "."))
                                         . " - "))
(setq org-capture-templates
      '(
        ("t" "Work Todo" entry (file+headline (eval (concat wnka/org-path "work.org")) "Inbox")
         "* TODO %?\n  %i\n")
        ("d" "Work Todo Today" entry (file+headline (eval (concat wnka/org-path "work.org")) "Inbox")
         "* TODO %?\n  SCHEDULED: %t")
        )
      )
(setq org-log-done 'time)
(setq org-refile-use-outline-path nil)
(setq org-agenda-start-on-weekday nil)
(setq org-refile-targets '(
                           ("work.org" . (:level . 1)) 
                           ))
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)" "CANCELLED(c)")))
(setq org-use-fast-todo-selection t)
(setq org-tags-column 90)


;; Various Preferences
(setq kill-whole-line t)

;; Use regex stuff for searchin'
(global-set-key [(control s)] 'isearch-forward-regexp)
(global-set-key [(control r)] 'isearch-backward-regexp)

;; Aliases
;;
(defalias 'oj 'org-journal-new-entry)
(defalias 'qrr 'query-replace-regexp)
(defalias 'dk 'describe-key)
(defalias 'edb 'ediff-buffers)
(defalias 'afm 'auto-fill-mode)
(defalias 'gt 'goto-line)
(defalias 'fgd 'find-grep-dired)
(defalias 'orgw 'org-mw-export-as-mediawiki)
(defalias 'oj 'org-journal-new-entry)
(defalias 'gits 'magit-status)
(defalias 'osl 'org-store-link)
(defalias 'kr 'helm-show-kill-ring)

(setq confirm-kill-emacs 'y-or-n-p)

(setq-default
 ;; js2-mode
 js2-basic-offset 2
 ;; web-mode
 css-indent-offset 2
 web-mode-markup-indent-offset 2
 web-mode-css-indent-offset 2
 web-mode-code-indent-offset 2
 web-mode-attr-indent-offset 2)

(with-eval-after-load 'web-mode
  (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
  (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
  (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil)))

(with-eval-after-load 'flycheck
  (setq flycheck-display-errors-function
        #'flycheck-display-error-messages))

(add-to-list 'auto-mode-alist '("\\.template$" . json-mode))
