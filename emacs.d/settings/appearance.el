; Turn off splash screen
(setq inhibit-splash-screen t)

; Tune appearance modes
(set-scroll-bar-mode nil)
(tool-bar-mode 0)
(menu-bar-mode 0)

; Start maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

; Modebar
(column-number-mode t)

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

;; Fringe
(require 'git-gutter-fringe+)
(global-git-gutter+-mode t)
(git-gutter+-toggle-fringe)
(git-gutter-fr+-minimal)
