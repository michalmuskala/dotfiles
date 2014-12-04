;;;###autoload
(defun mmm/read-file-to-string (path)
  "Reads the contents of path into a string."
  (with-temp-buffer
    (insert-file-contents-literally path)
    (buffer-string)))

;;;###autoload
(defun mmm/find-subpath-in-path (subpath path)
  "Walks up the passed path hunting for subpath at each level."
  (let ((match (concat (file-name-as-directory path) subpath)))
    (if (file-exists-p match)
        match
      (unless (string= path "/")
        (mmm/find-subpath-in-path
         subpath
         (file-name-directory (substring path 0 -1)))))))

;;;###autoload
(defun mmm/find-in-path (subpath)
  "Walks up the current path hunting for subpath at each level."
  (mmm/find-subpath-in-path
   subpath
   (expand-file-name (if (buffer-file-name)
                         (file-name-directory (buffer-file-name))
                       default-directory))))
