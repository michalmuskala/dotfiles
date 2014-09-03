(setq scroll-bar-mode nil)
(setq column-number-mode t)

; Disbale linum-mode in neotree
(require 'linum-off)
(setq mmm-linum-disabled-modes
      '(neotree-mode))

(global-linum-mode t)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;(require 'column-maker)
;(column-maker-1 80)
