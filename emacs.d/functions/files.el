(defun mmm/read-file-to-string (path)
  "Reads the contents of path into a string."
  (with-temp-buffer
    (insert-file-contents-literally path)
    (buffer-string)))
