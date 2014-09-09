(setq yas-snippet-dirs
      (list (expand-file-name "snippets" user-emacs-directory)))

(yas-global-mode)

(setq yas-prompt-functions '(yas/ido-prompt))
