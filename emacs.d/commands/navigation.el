;;;###autoload
(defun mmm/open-line-below ()
  "Insert a new line below the current line and indent it."
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))

;;;###autoload
(defun mmm/open-line-above ()
  "Insert a new line above the current line and indent it."
  (interactive)
  (beginning-of-line)
  (newline)
  (forward-line -1)
  (indent-for-tab-command))

;;;###autoload
(defun mmm/open-line-between ()
  "Splits content before and after the point to insert new line between."
  (interactive)
  (mmm/trim-backwards-and-forwards)
  (newline)
  (newline)
  (indent-for-tab-command)
  (previous-line)
  (indent-for-tab-command))
