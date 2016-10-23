
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(require 'config-package)

(require 'config-editing-utils)

(require 'config-cpp)

; go mode
(add-to-list 'load-path "~/.emacs.d/config/go-mode.el-master")
(require 'go-mode-autoloads)

; 80 column
(require 'fill-column-indicator)
(add-hook 'c-mode-hook 'fci-mode)
(add-hook 'c++-mode-hook 'fci-mode)
(setq fci-rule-column 80)
(setq fci-rule-color "red")
(setq fci-rule-width 2)

; company config
(load "~/.emacs.d/config/company.el")

; go config
(load "~/.emacs.d/config/go-config.el")

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




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(global-linum-mode t)
 '(indent-tabs-mode nil))

;;
;; Custom settings
;;


;
; Change perl-mode -> cc-mode
;
(defalias 'perl-mode 'cc-mode)

;
; helm config
;
(load "~/.emacs.d/config/helm-config.el")

;
; sr-speedbar
;
(require 'sr-speedbar)
(setq speedbar-show-unknown-files t) ; show all files
(setq speedbar-use-images nil) ; use text for buttons
(setq sr-speedbar-right-side nil) ; put on left side

;
; Compile
;
(global-set-key (kbd "C-c c") 'compile) ; compile

;
; Tab width
;
(setq-default tab-width 2)

;
; GDB
;
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t

 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t
 )

; package.el 
(load "~/.emacs.d/config/color.el")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-function-name-face ((t (:foreground "blue"))))
 '(helm-selection ((t (:background "yellow" :distant-foreground "black"))))
 '(linum ((t (:inherit (shadow default) :background "#6A5ACD" :foreground "color-166")))))
