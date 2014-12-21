;; line numbers
(linum-mode)

;; show junk whitespace
(whitespace-mode)

;; activate character pairing
(smartparens-mode)

;; autocomplete
(add-to-list 'company-backends '(company-math-symbols-latex
                                 company-latex-commands))
(company-mode)

;; Turn of AuCTex "smart" quotes
(setq TeX-open-quote "\"")
(setq TeX-close-quote "\"")
