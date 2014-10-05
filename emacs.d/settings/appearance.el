; Turn off splash screen
(setq inhibit-splash-screen t)

; Tune appearance modes
(set-scroll-bar-mode nil)
(tool-bar-mode 0)
(menu-bar-mode 0)

; Modebar
(column-number-mode t)
(setq display-time-day-and-date t
      display-time-24hr-format  t)
(display-time)

; Set vertical rules colours
(setq fci-rule-color "dim gray")
(set-face-attribute 'vertical-border
                    nil
                    :foreground "dim gray")

; Load theme
(load-theme 'wilson t)

; Linum
(defun linum-format-func (line)
  (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
     (propertize (format (format " %%%dd" w) line) 'face 'linum)))
(setq linum-format 'linum-format-func)
