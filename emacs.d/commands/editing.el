;;;###autoload
(defun mmm/kill-and-trim (&optional arg)
  "Kills to the end of line and clears the whitespace"
  (interactive "P")
  (kill-line arg)
  (mmm/trim-forwards t))
