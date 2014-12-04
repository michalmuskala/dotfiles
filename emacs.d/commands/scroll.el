;;;###autoload
(defun mmm/other-window-next-line ()
  "Scroll the other window down a line."
  (interactive)
  (scroll-other-window 1))

;;;###autoload
(defun mmm/other-window-previous-line ()
  "Scroll the other window up a line."
  (interactive)
  (scroll-other-window -1))
