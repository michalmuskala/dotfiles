; Use directory when buffer names claches
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

; Update buffer when file changes
(global-auto-revert-mode t)

; Always add newline at the end when saving
(setq require-final-newline 'visit-save)

; Disable scratch buffer - use ielm instead
(kill-buffer "*scratch*")
