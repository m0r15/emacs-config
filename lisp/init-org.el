;; init-org.el

(require-package 'org)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; Store a note with completed tasks
(setq org-log-done 'note)

(org-babel-do-load-languages
 (quote org-babel-load-languages)
 (quote ((emacs-lisp . t)
         (dot . t)
         (ditaa . t)
         (sh . t)
         (org . t))))

(provide 'init-org)
