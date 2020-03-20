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

;; BEGIN ORG
(global-set-key "\C-c\C-r" 'org-refile)
(global-set-key "\C-cr" 'org-refile)
(global-set-key "\C-cj" 'org-journal-new-entry)
(setq wnka/org-path "~/ws/orgmode/src/PiwonkaOrgMode/")
(setq wnka/org-notes-path "~/ws/orgmode/src/PiwonkaOrgMode/notes/")
(setq org-agenda-files (mapcar #'(lambda (orgfile) (concat wnka/org-path orgfile)) 
                               (list
                                "inbox.org"
                                "work.org"
;                                "work.org_archive"
                                )))


(setq org-agenda-custom-commands
      '(("n" todo "NEXT") ; Todo items that are marked "NEXT"
        ; ("N" todo-tree "NEXT") ; Todo items that are marked "NEXT"
        ))

(setq org-agenda-sorting-strategy '(time-up priority-down category-up))
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-window-setup 'current-window)
(setq org-deadline-warning-days 0)

(setq org-use-property-inheritance t)

(setq org-export-section-number-format '((("1" "."))
                                         . " - "))

;;; SUPER AGENDA
;;; https://github.com/alphapapa/org-super-agenda
(setq org-super-agenda-groups
      '((:auto-outline-path t)))
(org-super-agenda-mode)

(setq org-capture-templates
      '(
        ("t" "Todo" entry (file+headline (lambda () (concat wnka/org-path "inbox.org")) "Inbox")
         "* TODO %?\n  %i\n")
        ("d" "Todo Today" entry (file+headline (lambda () (concat wnka/org-path "inbox.org")) "Inbox")
         "* TODO %?\n  SCHEDULED: %t")
        ("c" "Todo with Clipboard" entry (file+headline (lambda () (concat wnka/org-path "inbox.org")) "Inbox")
         "* TODO %?\n  %c" :empty-lines 1)
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
;;; END ORG

;; Various Preferences
(setq kill-whole-line t)

;; Use regex stuff for searchin'
(global-set-key [(control s)] 'isearch-forward-regexp)
(global-set-key [(control r)] 'isearch-backward-regexp)

;; Aliases
;;
(defalias 'oj 'org-journal-new-entry)
(defalias 'qrr 'query-replace-regexp)
(defalias 'edb 'ediff-buffers)
(defalias 'afm 'auto-fill-mode)
(defalias 'gits 'magit-status)
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

;;; BEGIN Mac shit from here: https://gist.github.com/railwaycat/3498096
;;; Needed if using the Emacs Mac Port from here: https://github.com/railwaycat/homebrew-emacsmacport
(global-set-key [(hyper a)] 'mark-whole-buffer)
(global-set-key [(hyper v)] 'yank)
(global-set-key [(hyper c)] 'kill-ring-save)
(global-set-key [(hyper s)] 'save-buffer)
(global-set-key [(hyper l)] 'goto-line)
(global-set-key [(hyper w)]
                (lambda () (interactive) (delete-window)))
(global-set-key [(hyper z)] 'undo)

(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'hyper)
;;; END Mac shit from here: https://gist.github.com/railwaycat/3498096

;;; BEGIN Deft config
(setq deft-directory "~/ws/orgmode/src/PiwonkaOrgMode/journal")
(setq deft-recursive t)
(setq deft-extensions '("txt" "org" ""))
;;; END Deft config
