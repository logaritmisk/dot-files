; Load path.
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/geben")

; Load theme.
(load-theme 'tomorrow-night-bright t)

; Inhibit.
(setq inhibit-startup-message t)
(setq inhibit-startup-screen t)
(setq inhibit-splash-screen t)

; Backup files.
(setq make-backup-files nil)
(setq auto-save-default nil)

; Default tab width.
(setq c-basic-offset 2)
(setq tab-width 2)

(setq fill-column 78)
(c-set-offset 'case-label '+)
(c-set-offset 'arglist-close 'c-lineup-arglist-operators)
(c-set-offset 'arglist-intro '+) ; for FAPI arrays and DBTNG
(c-set-offset 'arglist-cont-nonempty 'c-lineup-math) ; for DBTNG

; UTF-8 love.
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; Use spaces by default.
(setq indent-tabs-mode nil)

; Show column number.
(setq column-number-mode t)

; Show trailing whitespace.
(setq show-trailing-whitespace t)

; Delete trailing whitespace.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Mac keyboard stuff.
(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

; Nice refresh feature.
(defun refresh-file ()
  (interactive)
  (revert-buffer t t t))

(global-set-key [f5] 'refresh-file)

; PHP mode.
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)

(add-to-list 'auto-mode-alist '("\\.module$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.test$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.install$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.profile$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.engine$" . php-mode))

; Conf. mode.
(add-to-list 'auto-mode-alist '("\\.info" . conf-mode))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("cf2bb5e8046ca363183c87e8d33932f2a76a3d705b9db2721631777bbce92968" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
