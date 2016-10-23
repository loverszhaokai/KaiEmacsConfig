; show line number
(global-linum-mode 1)
(setq linum-format "%4d ")

; default coding system
(modify-coding-system-alist 'file "\\.txt\\'" 'utf-8)
(modify-coding-system-alist 'file "\\.log\\'" 'utf-8)

(provide 'config-editing-utils)
