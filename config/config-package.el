(require 'package)

; add MELPA to repository list
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(provide 'config-package)
