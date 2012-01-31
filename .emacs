(add-to-list 'load-path "~/.emacs.d")

(require 'php-mode)

(load "drupal-mode")

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)

(add-to-list 'auto-mode-alist '("\\.php$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.module$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.test$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.install$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.profile$" . drupal-mode))
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
