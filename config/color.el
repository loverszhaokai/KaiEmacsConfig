;
; Highlight current line
;
(global-hl-line-mode 1)
(set-face-background 'hl-line "#333333")
(set-face-foreground 'highlight nil)

;
; Selected text background-color
;
(set-face-attribute 'region nil :background "#444444")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-function-name-face ((t (:foreground "blue"))))
 '(helm-selection ((t (:background "yellow" :distant-foreground "black"))))
 '(linum ((t (:inherit (shadow default) :foreground "brightmagenta")))))
