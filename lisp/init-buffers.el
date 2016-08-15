;; init-buffers

(require-package 'bs)
(require-package 'ido)

(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file
         bs-sort-buffer-interns-are-last)))

(ido-mode t)
(setq ido-enable-flex-matching t)

(provide 'init-buffers)

