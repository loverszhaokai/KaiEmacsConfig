; style I want to use in c++ mode

;;
;; TAB config begin
;;
;; make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil)

(setq-default tab-width 2)

;;
;; TAB config end
;;


;; Do not indent after insert ";)"
(require 'cc-mode)
	(add-to-list 'c-mode-common-hook
		(lambda () (setq c-syntactic-indentation nil)))


;; Use Google C++ style for emacs
(load "~/.emacs.d/config/google-c-style.el")

(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

