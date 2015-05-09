(require 'ido)

(ido-mode 1)

(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

(setq ido-separator "\n") ;; RET the prompts

(setq ido-ignore-buffers '("^ " "scratch" "*Completions*" "*Shell Command Output*"
			   "*Messages*" "Async Shell Command"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ido-create-new-buffer (quote prompt))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
