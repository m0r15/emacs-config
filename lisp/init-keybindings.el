;; init-keybindings

(require-package 'key-chord)

(key-chord-mode 1)

;; commenting
(global-set-key (kbd "C-x /") 'comment-or-uncomment-region-or-line)

;; navigation
;;(global-set-key (kbd ""))


(provide 'init-keybindings)
