(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)
(require 'pallet)

(require 'use-package)

;; Basic
(setq inhibit-splash-screen t)
(setq make-backup-files nil)
(setq auto-save-default nil)

(line-number-mode 1)
(column-number-mode 1)

(global-linum-mode t)
(setq linum-format "%4d ")

(show-paren-mode t)
(setq show-paren-style 'parenthesis)

;; Theme
(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/themes"))

(load-theme 'monokai t)

;; Packages
(use-package flycheck
  :config
  (progn
    (setq flycheck-display-errors-function nil)
    (add-hook 'after-init-hook 'global-flycheck-mode)))

(use-package flycheck-cask
  :init (add-hook 'flycheck-mode-hook 'flycheck-cask-setup))

(use-package yaml-mode
  :mode ("\\.yml$" . yaml-mode))

(use-package css-mode
  :config (setq css-indent-offset 2))

(use-package less-css-mode
  :mode ("\\.less$" . less-css-mode))

(use-package js-mode
  :mode ("\\.json$" . js-mode)
  :init
  (progn
    (add-hook 'js-mode-hook (lambda () (setq js-indent-level 2)))))

(use-package ruby-mode
  :mode (("Gemfile$" . ruby-mode)
	 ("Rakefile$" . ruby-mode)
	 ("Guardfile$" . ruby-mode)
	 ("config.ru$" . ruby-mode)
	 ("\\.gemspec$" . ruby-mode)))

(use-package sh-script
  :config (setq sh-basic-offset 2))

(use-package html-mode
  :mode ("\\.erb$" . html-mode))

(use-package conf-mode
  :mode (("\\.info$" . conf-mode)
	 ("\\.make$" . conf-mode)))
