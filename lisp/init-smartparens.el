;; init-smartparens.el
;; [[https://github.com/Fuco1/smartparens]]
(require-package 'smartparens)

(require 'smartparens-config)

;; хуки
(add-hook 'emacs-lisp-hook 'smartparens-mode)

(provide 'init-smartparens))
