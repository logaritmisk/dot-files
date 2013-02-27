(add-hook
 'php-mode-hook
 '(lambda ()
    (setq tab-width 2)
    (setq c-basic-offset 2)
    (c-set-offset 'case-label '+)
    (c-set-offset 'arglist-close 0)
    (c-set-offset 'arglist-intro '+)
    (c-set-offset 'arglist-cont-nonempty 'c-lineup-math)))


(autoload 'php-mode "php-mode" "Major mode for editing php code." t)

(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.test$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.module$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.install$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.profile$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.engine$" . php-mode))
