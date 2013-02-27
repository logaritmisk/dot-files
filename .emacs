(require 'cl)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(setq el-get-user-package-directory "~/.emacs.d/packages.d/")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))



(setq
 el-get-sources
 '((:name php-mode
          :type github
          :pkgname "ejmr/php-mode")
   (:name geben
          :type svn
          :url "http://geben-on-emacs.googlecode.com/svn/trunk/")
   (:name emacs-tron-theme
          :type github
          :pkgname "ivanmarcin/emacs-tron-theme"
          :features tron-theme)))

(setq
 my:el-get-packages
 '(el-get
   php-mode
   geben
   yasnippet
   emacs-tron-theme))

(el-get 'sync my:el-get-packages)



(setq inhibit-splash-screen t)
(line-number-mode 1)
(column-number-mode 1)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq linum-format "%d ")
(global-linum-mode 1)

(setq-default show-trailing-whitespace t)

(setq c-basic-offset 2)
(setq tab-width 2)
(setq-default indent-tabs-mode nil)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)



;(yas-global-mode 1)



; Javascript mode.
;(setq js-indent-level 2)

;(setq fill-column 78)
;(c-set-offset 'case-label '+)
;(c-set-offset 'arglist-close 'c-lineup-arglist-operators)
;(c-set-offset 'arglist-intro '+) ; for FAPI arrays and DBTNG
;(c-set-offset 'arglist-cont-nonempty 'c-lineup-math) ; for DBTNG


; Conf mode.
(add-to-list 'auto-mode-alist '("\\.info$" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.make$" . conf-mode))


; Custom set variables.
