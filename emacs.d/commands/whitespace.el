;;;###autoload
(defun mmm/trim-backwards (&optional nonewline)
  "Removes all whitespace behind the point."
  (interactive "P")
  (while (looking-back (if nonewline "[\s\t]" "[\s\t\n]"))
    (backward-delete-char-untabify 1)))

;;;###autoload
(defun mmm/trim-forwards (&optional nonewline)
  "Removes all whitespace in front of the point."
  (interactive "P")
  (while (looking-at (if nonewline "[\s\t]" "[\s\t\n]"))
    (delete-char 1)))

;;;###autoload
(defun mmm/trim-backwards-and-forwards (&optional nonewline)
  "Removes all whitespace behind and in front of the point."
  (interactive "P")
  (mmm/trim-backwards nonewline)
  (mmm/trim-forwards nonewline))

;;;###autoload
(defun mmm/fix-all-whitespace ()
  "Replace tabs and cleans up junk whitespace."
  (interactive)
  (untabify (point-min) (point-max))
  (whitespace-cleanup))
