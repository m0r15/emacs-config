;; for GUI settings
(require-package 'flatland-theme)

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))

;; Indentation
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)     ; If press TAB, insert SPC
;(setq indent-line-function 'insert-tab)

;; show marker in left frint for lines not in buffer
(setq indicate-empty-lines t)

;; suppress GUI Feature
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)


(defun init-theme ()
  (load-theme 'flatland t))



(defun init-gui-customisations ()
  (init-theme)
  (setq-default line-spacing 2))

(add-hook 'after-init-hook 'init-gui-customisations)

(provide 'init-gui)
