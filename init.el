

; show line number
(global-linum-mode 1)

; enable hs minor mode
(add-hook 'c-mode-common-hook 'hs-minor-mode)

; package.el 
(load "~/.emacs.d/config/package-config.el")


; company mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(add-to-list 'company-backends 'company-c-headers)


; auto-complete config
;(load "~/.emacs.d/config/auto-complete-config.el")


; yasnippet config
;(load "~/.emacs.d/config/yasnippet-config.el")


; ido config
;(load "~/.emacs.d/config/ido-config.el")


; ido config
; switch buffer or for find-file command
;(load "~/.emacs.d/config/ido-config.el")


; CEDET config


; lisp debug config
;(load "~/.emacs.d/config/debug-config.el")


; linux kernel code style
;(load "~/.emacs.d/config/kernel.el")


; prevent the creation of backup files
(setq make-backup-files nil)



; C/C++ coding style
(load "~/.emacs.d/config/c_coding_style.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-tab-always-indent t)
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-function-name-face ((t (:foreground "blue")))))

;;
;; Custom settings
;;


;
; Change perl-mode -> cc-mode
;
(defalias 'perl-mode 'cc-mode)
