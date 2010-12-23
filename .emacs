(add-to-list 'load-path "~/.emacs_inc")

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)

(add-to-list 'same-window-buffer-names "*Buffer List*")
(add-to-list 'auto-mode-alist '("\\.php$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.module$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.test$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.install$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.profile$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.engine$" . drupal-mode))


(global-set-key [f5] 'refresh-file)
(global-set-key [f12] 'undo)
(global-set-key (kbd "TAB") 'self-insert-command)


(setq inhibit-startup-message t)
(setq inhibit-startup-screen t)
(setq inhibit-splash-screen t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq c-basic-offset 2)
(setq indent-tabs-mode 0)


(defun wicked/php-mode-init ()
  (setq fill-column 78)
  (setq show-paren-mode t)
  (c-set-offset 'arglist-cont 0)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'case-label '+)
  (c-set-offset 'arglist-close 0))

(defun refresh-file ()
  (interactive)
  (revert-buffer t t t))

(defun drupal-mode ()
  (interactive)
  (php-mode)
  (setq c-basic-offset 2)
  (setq indent-tabs-mode 0)
  (c-set-offset 'case-label '+)
  (c-set offset 'arglist-intro '+)
  (message "Drupal mode activated."))


(add-hook 'php-mode-hook 'wicked/php-mode-init)
