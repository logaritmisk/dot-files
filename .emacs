(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/ecb-2.40")

(load-file "~/.emacs.d/cedet-1.0.1/common/cedet.el")

(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))

(require 'php-mode)
(require 'ecb-autoloads)
(require 'zenburn)

(load "drupal-mode")

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)

(add-to-list 'auto-mode-alist '("\\.php$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.module$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.test$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.install$" . drupal-mode))
;(add-to-list 'auto-mode-alist '("^.+\.profile$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.engine$" . drupal-mode))

;(global-set-key (kbd "TAB") 'self-insert-command)

(setq inhibit-startup-message t)
(setq inhibit-startup-screen t)
(setq inhibit-splash-screen t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq c-basic-offset 2)
(setq tab-width 2)

;; Use spaces by default.
(setq indent-tabs-mode nil)

;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)

;; Show line and column number.
(setq line-number-mode t)
(setq column-number-mode t)

;; Show trailing whitespace.
(setq show-trailing-whitespace t)

;; Delete trailing whitespace.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Mac keyboard stuff.
(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes (quote (("left8" (0.22014925373134328 . 0.29411764705882354) (0.22014925373134328 . 0.23529411764705882) (0.22014925373134328 . 0.29411764705882354) (0.22014925373134328 . 0.16176470588235295)))))
 '(ecb-options-version "2.40"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
