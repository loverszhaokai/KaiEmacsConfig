(require 'package)

; add MELPA to repository list
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;(cond
; ((>= 24 emacs-major-version)
;  (require 'package)
;  (package-initialize)
;  (add-to-list 'package-archives
;               '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;  (package-refresh-contents)
;  )
; )
