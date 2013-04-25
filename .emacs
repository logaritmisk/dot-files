(require 'cl)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(setq el-get-user-package-directory "~/.emacs.d/packages")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))


(setq
 el-get-sources
 '((:name php-mode
          :type github
          :pkgname "ejmr/php-mode")
   (:name geben
          :type svn
          :url "http://geben-on-emacs.googlecode.com/svn/trunk/")
   (:name flymake-easy
          :type github
          :pkgname "purcell/flymake-easy"
          :features flymake-easy)
   (:name flymake-php
          :type github
          :pkgname "purcell/flymake-php"
          :features flymake-php)
   (:name emacs-tron-theme
          :type github
          :pkgname "ivanmarcin/emacs-tron-theme"
          :features tron-theme)))

(setq
 my:el-get-packages
 '(el-get
   php-mode
   python-mode
   yaml-mode
   markdown-mode
   graphviz-dot-mode
   geben
   yasnippet
   textmate
   ecb
   flymake
   flymake-cursor
   flymake-easy
   flymake-php
   git-gutter
   emacs-tron-theme
   tomorrow-theme))

(el-get 'sync my:el-get-packages)



(setq inhibit-splash-screen t)
(line-number-mode 1)
(column-number-mode 1)

(show-paren-mode t)
(setq show-paren-style 'parenthesis)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq linum-format "%4d ")

(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq tab-width 2)
(setq c-basic-offset 2)
(setq-default indent-tabs-mode nil)

(setq sh-basic-offset 2)
(setq sh-indentation 2)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'none)

(setq fill-column 78)

(require 'tramp)
(setq tramp-default-method "ssh")



(add-to-list 'auto-mode-alist '("\\.info$" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.make$" . conf-mode))
