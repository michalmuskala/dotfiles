;; Use short answers everywhere
(defalias 'yes-or-no-p 'y-or-n-p)

;; Skip question when killing term buffers or other process ones
(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
         kill-buffer-query-functions))

;; Delete region when typing
(delete-selection-mode 1)
