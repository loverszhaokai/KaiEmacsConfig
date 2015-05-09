; style I want to use in c++ mode

;;
;; TAB config begin
;;
;; make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil) ; emacs 23.1, 24.2, default to t

;; set default tab char's display width to 4 spaces
(setq-default tab-width 8) ; emacs 23.1, 24.2, default to 8

(defun insert-tab-char ()
  "insert a tab char. (ASCII 9, \t)"
  (interactive)
  (insert "\t")
)

(global-set-key (kbd "TAB") 'insert-tab-char) ; same as Ctrl+i
;;
;; TAB config end
;;


; Use linux style
(setq
	c-default-style "linux" ;; set style to "linux"
	)

;; Do not indent after insert ";)"
(require 'cc-mode)
	(add-to-list 'c-mode-common-hook
		(lambda () (setq c-syntactic-indentation nil)))



