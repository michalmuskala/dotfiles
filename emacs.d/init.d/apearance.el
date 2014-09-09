; Disbale linum-mode in neotree
(require 'linum-off)
(setq mmm-linum-disabled-modes
      '(neotree-mode))

(global-linum-mode t)

;(require 'column-maker)
;(column-maker-1 80)
