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
(setq wnka/org-path "~/Dropbox/orggit/")
(setq wnka/org-notes-path "~/Documents/notes/")

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
