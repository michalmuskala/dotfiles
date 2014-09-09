(defun mmm/replace-in-string (what with in)
  "Replace all occurences of WHAT with WHITh in IN"
  (replace-regexp-in-string (regexp-quote what) with in))
