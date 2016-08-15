;; init-autocmpl

;; M-n M-p to select <return> to complete or tab
;; M-(digit) quick complete

(require-package 'company)

; colorize completion
(require 'color)

(defun autocmpl-color ()
  (interactive)
  (let ((bg (face-attribute 'default :background)))
    (custom-set-faces
     `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 2)))))
     `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
     `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
     `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
     `(company-tooltip-common ((t (:inherit font-lock-constant-face))))))
)

(defun autocmpl-customise ()
  (autocmpl-color)
  (global-company-mode))

(add-hook 'after-init-hook 'autocmpl-color)
;;(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-autocmpl)
