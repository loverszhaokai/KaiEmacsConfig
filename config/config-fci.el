; 80 column
(require 'fill-column-indicator)
(add-hook 'c-mode-hook 'fci-mode)
(add-hook 'c++-mode-hook 'fci-mode)
(setq fci-rule-column 80)
(setq fci-rule-color "red")
(setq fci-rule-width 2)

(provide 'config-fci)
