; Turn off splash screen
(setq inhibit-splash-screen t)

; Turn off scroll-bars
(setq scroll-bar-mode nil)

(add-to-list 'custom-theme-load-path 
             (expand-file-name "themes" user-emacs-directory))
(load-theme 'rubytapas)
