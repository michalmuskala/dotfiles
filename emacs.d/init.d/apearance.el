; Disbale linum-mode in neotree
(require 'linum-off)
(setq mmm-linum-disabled-modes
      '(neotree-mode))

(global-linum-mode t)

;(require 'column-maker)
;(column-maker-1 80)

(setq linum-format 'dynamic)

(defun linum-format-func (line)
  (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
     (propertize (format (format " %%%dd" w) line) 'face 'linum)))
(setq linum-format 'linum-format-func)
