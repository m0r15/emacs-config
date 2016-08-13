;; Отключение меню
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;; Отключение тулбара
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
;; Отключение скроллбара
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))


;; Identation
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil) ; if press TAB, ins SPC. Off TAB

;; supres feature
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)


(defun init-gui-customisations () )

(add-hook 'after-init-hook 'init-gui-customisations)

(provide 'init-gui)
