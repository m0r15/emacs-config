;;; init.el - emacs config
;;; Initialisation file for Emacs

(setq make-backup-files        nil) ; Don't want backup files
(setq auto-save-list-file-name nil) ; Don't want .saves files
(setq auto-save-default        nil) ; Don't want auto saving

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
(require 'init-themes)
(require 'init-linum)
(require 'init-gui)
;;(require 'init-smartparens)
(require 'init-typing)
(require 'init-buffers)
(require 'init-autocmpl)
(require 'init-keybindings)
(require 'init-org)

(provide 'init)

