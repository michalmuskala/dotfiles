(defun mmm/load-dir (path &optional noerror)
  "This loads all .el files from a directory inside .emacs.d"
  (let ((dir (expand-file-name path user-emacs-directory)))
    (if (file-exists-p dir)
        (dolist (file (directory-files dir t "^[^\.#]*?\\.el$"))
          (load file noerror)))))

(mmm/load-dir "functions")
(mmm/load-dir "commands")
(mmm/load-dir "settings")
