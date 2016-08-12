(require-package 'flatland-black-theme)

(defun init-theme ()
  (load-theme 'flatland-black t))

(defun init-customisations ()
  (init-theme))

(add-hook 'after-init-hook 'init-customisations)

(provide 'init-themes)
