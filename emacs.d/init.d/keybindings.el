(setq cua-enable-cua-keys nil)
(cua-mode t)

(global-undo-tree-mode t)

; disable those awful tabs
(setq-default indent-tabs-mode nil)

(defun mmm-reload-config ()
  (interactive)
  (load-file "~/.emacs"))

(global-set-key (kbd "C-c E") 'mmm-reload-config)
