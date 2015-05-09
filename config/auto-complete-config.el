(add-to-list 'load-path "~/Temp/emacs_config7")

;(add-to-list ' load-path "~/.emacs.d/elpa/auto-complete-20150124.1523/")
(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories 
;	     "~/Temp/emacs_config/ac-dict")

(ac-config-default)

(global-auto-complete-mode t)


;(add-to-list 'load-path "~/Temp/auto-complete-clang")

;(require 'auto-complete-clang)



; auto-complete source for C headers
;(add-hook 'c-mode-hook
;            (lambda ()
;              (add-to-list 'ac-sources 'ac-source-c-headers)
;              (add-to-list 'ac-sources 'ac-source-c-header-symbols t)))

; An auto-complete source for C/C++ header files
;(require 'auto-complete-c-headers)
;(add-to-list 'ac-sources 'ac-source-c-headers)

