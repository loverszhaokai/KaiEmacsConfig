

; show line number
(global-linum-mode 1)
(setq linum-format "%d ")

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
 '(ecb-options-version "2.40")
 '(global-linum-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-function-name-face ((t (:foreground "blue"))))
 '(linum ((t (:inherit (shadow default) :foreground "brightmagenta")))))

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
(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(global-set-key (kbd "C-c s") 'helm-occur) ; use helm grep
(global-set-key (kbd "C-x C-b") 'helm-mini)
(global-set-key (kbd "C-x c") 'helm-semantic-or-imenu) ; C-x and release C and press c

(semantic-mode 1)

(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(helm-mode 1)


;
; helm-gtags
;
(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-prefix-key "\C-cg"
 helm-gtags-suggested-key-mapping t
 )

(require 'helm-gtags)
;; Enable helm-gtags-mode
(add-hook 'dired-mode-hook 'helm-gtags-mode)
(add-hook 'eshell-mode-hook 'helm-gtags-mode)
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

(define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
(define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)


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
; Highlight current line
;
(global-hl-line-mode 1)
(set-face-background 'hl-line "#00ff00")
(set-face-foreground 'highlight nil)
