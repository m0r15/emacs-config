;;; init.el - emacs config
;;; Initialisation file for Emacs

(defvar user-lib-dir (expand-file-name "lib" user-emacs-directory))
(defvar lisp-dir (expand-file-name "lisp" user-emacs-directory))

(add-to-list 'load-path lisp-dir)
(add-to-list 'load-path user-lib-dir)

(setq custom-file (expand-file-name "custom.el" lisp-dir))
(load custom-file)

;; Add files in lib dir to 'load-path
(dolist (project (directory-files user-lib-dir t "\\w+"))
  (when (file-directory-p project)
        (add-to-list 'load-path project)))

;; Init
(require 'init-package)
(require 'init-autocomplete)
(require 'init-linum)
(require 'init-gui)


;; Sane default from https://github.com/magnars/.emacs.d/
(require 'sane-default)

(provide 'init)
