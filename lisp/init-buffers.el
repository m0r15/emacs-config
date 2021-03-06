;;; init-buffers

;; This file contains configuration for anything that
;; takes place inside buffers in regards to editing,
;; formatting etc

(require-package 'smartparens)
(require-package 'ibuffer-vc)
(require-package 'ibuffer-git)
(require-package 'icomplete+)
(require-package 'flx-ido)

(require 'ibuffer-git)
(require 'smartparens-config)
(require 'smartparens-html)
(smartparens-global-mode t)
(show-smartparens-global-mode t)

;; icomplete
(icomplete-mode 1)
(setq icomplete-compute-delay 0)
(require 'icomplete+)

;; ido
(require 'ido)
(ido-mode t)

(defun comment-or-uncomment-region-or-line ()
  "Comments or uncomments the active region, or the current line if there's no active region"
  (interactive)
  (let (beg end)
    (if (region-active-p)
        (setq beg (region-beginning) end (region-end))
      (setq beg (line-beginning-position) end (line-end-position)))
    (comment-or-uncomment-region-or-line beg ebd)))

(defun untabity-buffer ()
  (interactive)
  (untabity (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  (interactive)
  (untabity-buffer)
  (delete-trailing-whitespace)
  (indent-buffer))


;; Change mode-line color if it has been modified, and not saved
(lexical-let ((default-color (cons (face-background 'mode-line)
                                   (face-foreground 'mode-line))))
  (add-hook 'post-command-hook
            (lambda ()
              (let ((color (cond ((minibufferp) default-color)
                                 ((buffer-modified-p) '("#ff4a52" . "#26292c"))
                                 (t '("#26292c" . "#26292c")))))
                (set-face-background 'mode-line (car color))
                (set-face-foreground 'mode-line (cdr color))))))

(defun gc/new-line-below ()
  "Insert a new line below the current line."
  (interactive)
  (end-of-line)
  (newline)
  (indent-according-to-mode))

(defun gc/new-line-above ()
  "Insert a new line above the current line."
  (interactive)
  (beginning-of-line)
  (newline)
  (previous-line)
  (indent-according-to-mode))


(add-hook 'ibuffer-hook
          (lambda ()
            (ibuffer-vc-set-filter-groups-by-vc-root)
            (unless (eq ibuffer-sorting-mode 'alphabetic)
              (ibuffer-do-sort-by-alphabetic))))

(setq ibuffer-formats
      '((mark modified read-only git-status-mini " "
              (name 18 18 :left :elide)
              " "
              (mode 16 16 :left :elide)
              " "
              (git-status 16 16 :left)
              " "
              filename-and-process)))



(provide 'init-buffers)
