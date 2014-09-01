(setq scroll-bar-mode nil)
(setq column-number-mode t)

; Disbale linum-mode in neotree
(require 'linum-off)
(setq mmm-linum-disabled-modes
      '(neotree-mode))

(setq global-linum-mode t)
(add-hook 'neotree-mode-hook
	  (lambda()
	    (linum-mode nil)))

;(require 'column-maker)
;(column-maker-1 80)
