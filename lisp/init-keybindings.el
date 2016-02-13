;;; Config key binding
(require-package 'key-chord)

;; Enable key-chord for keybindings
(key-chord-mode 1)

;; Commenting
(global-set-key (kbd "C-x /") 'comment-or-uncomment-region-or-line)

;; Buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c n") 'cleanup-buffer)

(global-set-key (kbd "C-o") 'gc/new-line-below)
(global-set-key (kbd "M-o") 'gc/new-line-above)


(provide 'init-keybindings)
