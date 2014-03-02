(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(setq dim-packages
      '(php-mode
        js2-mode
        css-mode
        python-mode
        ruby-mode
        yaml-mode
        textmate
        ethan-wspace))

(el-get 'sync dim-packages)

(setq inhibit-splash-screen t)
(setq make-backup-files nil)
(setq auto-save-default nil)

(line-number-mode 1)
(column-number-mode 1)

(global-linum-mode t)
(setq linum-format "%4d ")

(show-paren-mode t)
(setq show-paren-style 'parenthesis)

(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/replace-colorthemes"))

(load-theme 'ld-dark t)

(add-to-list 'auto-mode-alist '("\\.erb$" . html-mode))

(add-to-list 'auto-mode-alist '("\\.info$" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.make$" . conf-mode))
