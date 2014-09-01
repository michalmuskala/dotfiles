(setq mmm-emacs-init-file
      (or load-file-name buffer-file-name))
(setq mmm-emacs-config-dir
      (file-name-directory mmm-emacs-init-file))
(setq user-emacs-directory mmm-emacs-config-dir)
(setq mmm-init-dir 
      (expand-file-name "init.d" mmm-emacs-config-dir))
(setq mmm-themes-dir 
      (expand-file-name "themes" mmm-emacs-config-dir))
(setq mmm-elisp-dir
      (expand-file-name "elisp" mmm-emacs-config-dir))

(setq custom-file
      (expand-file-name "customizations.el" mmm-emacs-config-dir))
(load custom-file)

(if (file-exists-p mmm-init-dir)
    (dolist (file (directory-files mmm-init-dir t "\\.el$"))
      (load file)))
