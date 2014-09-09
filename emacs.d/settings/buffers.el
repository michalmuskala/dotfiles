; Use directory when buffer names claches
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

; Update buffer when file changes
(global-auto-revert-mode t)
