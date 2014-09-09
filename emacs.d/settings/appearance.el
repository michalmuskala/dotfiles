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

; Load theme
(add-to-list 'custom-theme-load-path 
             (expand-file-name "themes" user-emacs-directory))
(load-theme 'rubytapas t)
