;; Linum+ config
(require-package 'linum)
;(require 'linum+)

;(global-nlinum-mode t)
;(setq linum-format "%d ")
;(global-linum-mode l)

(line-number-mode t) ;; показвать номер строки в mode-line
(global-linum-mode t) ;; показать номер строк во всех буферах
(column-number-mode t) ;; показать номер столбца в mode-line
(setq linum-format " %d") ;; задаем формат нумерации строк

(provide 'init-linum)
