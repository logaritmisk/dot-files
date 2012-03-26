; Load path.
(add-to-list 'load-path "~/.emacs.d")

; Colors as pretty.
(require 'color-theme)
(color-theme-comidia)

; Inhibit.
(setq inhibit-startup-message t)
(setq inhibit-startup-screen t)
(setq inhibit-splash-screen t)

; Backup files.
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq c-basic-offset 2)
(setq tab-width 2)

; UTF-8 love.
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; Use spaces by default.
(setq indent-tabs-mode nil)

; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)

; Show line and column number.
(setq line-number-mode t)
(setq column-number-mode t)

; Show trailing whitespace.
(setq show-trailing-whitespace t)

; Delete trailing whitespace.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Mac keyboard stuff.
(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

; PHP mode.
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


; Flymake
(require 'flymake)

(defun flymake-php-init ()
  "Use php to check the syntax of the current file."
  (let* ((temp (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace))
          (local (file-relative-name temp (file-name-directory buffer-file-name))))
    (list "php" (list "-f" local "-l"))))

(add-to-list 'flymake-err-line-patterns
  '("\\(Parse\\|Fatal\\) error: +\\(.*?\\) in \\(.*?\\) on line \\([0-9]+\\)$" 3 4 nil 2))

(add-to-list 'flymake-allowed-file-name-masks '("\\.php$" flymake-php-init))

(add-to-list 'flymake-allowed-file-name-masks '("\\.module$" flymake-php-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.install$" flymake-php-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.inc$" flymake-php-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.engine$" flymake-php-init))

(add-hook 'php-mode-hook (lambda () (flymake-mode 1)))
(define-key php-mode-map '[M-S-up] 'flymake-goto-prev-error)
(define-key php-mode-map '[M-S-down] 'flymake-goto-next-error)


; Puppet mode.
(load "puppet-mode-init")
