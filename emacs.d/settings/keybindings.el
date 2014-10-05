(setq cua-enable-cua-keys nil)
(cua-mode t)

(global-undo-tree-mode t)

; disable those awful tabs
(setq-default indent-tabs-mode nil)

(global-set-key [C-S-up]   'move-text-up)
(global-set-key [C-S-down] 'move-text-down)
