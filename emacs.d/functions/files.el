(defun mmm/load-dir (path &optional noerror)
  "This loads all .el files from a directory inside .emacs.d"
  (let ((dir (expand-file-name path user-emacs-directory)))
    (dolist (file (directory-files dir t "\\.el$"))
      (load file noerror))))

(defun mmm/create-intermediate-directories ()
  (when buffer-file-name
    (let ((dir (file-name-directory buffer-file-name)))
      (when (and (not (file-exists-p dir))
                 (y-or-n-p (format "Directory %s does not exist. Create it?" dir)))
        (make-directory dir t)))))

(add-hook 'before-save-hook 'mmm/create-intermediate-directories)
