; Load path.
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/geben")


; Load theme.
(load-theme 'tomorrow-night t)


; Load ECB.
(setq stack-trace-on-error t)

(add-to-list 'load-path "~/.emacs.d/ecb")

(require 'ecb)

(global-set-key (kbd "<M-left>") 'ecb-goto-window-methods)
(global-set-key (kbd "<M-right>") 'ecb-goto-window-edit1)


; Smart tab.
(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
    the minibuffer. Else, if mark is active, indents region. Else if
    point is at the end of a symbol, expands it. Else indents the
    current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
        (dabbrev-expand nil))
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (if (looking-at "\\_>")
          (dabbrev-expand nil)
        (indent-for-tab-command)))))

(global-set-key (kbd "<tab>") 'smart-tab)


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


; Javascript mode.
(setq js-indent-level 2)

(setq fill-column 78)
(c-set-offset 'case-label '+)
(c-set-offset 'arglist-close 'c-lineup-arglist-operators)
(c-set-offset 'arglist-intro '+) ; for FAPI arrays and DBTNG
(c-set-offset 'arglist-cont-nonempty 'c-lineup-math) ; for DBTNG


; YAML mode.
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(add-hook 'yaml-mode-hook
  '(lambda ()
    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))


; UTF-8 love.
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


; Linum mode.
(setq linum-format "%d ")


; Use spaces by default.
(setq-default indent-tabs-mode nil)


; Show column number.
(setq column-number-mode t)


; Show trailing whitespace.
(setq-default show-trailing-whitespace t)


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
(add-to-list 'auto-mode-alist '("\\.info$" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.make$" . conf-mode))



; Custom set variables.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(ansi-term-color-vector [unspecified "#1d1f21" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#81a2be" "#c5c8c6"])
 '(background-color "#ffffd7")
 '(background-mode light)
 '(cursor-color "#626262")
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "9117c98819cfdeb59780cb43e5d360ff8a5964d7dd9783b01708bda83098b9fd" "e992575f7c09459bfc190e6776b8f5f96964023e98267a87fb3094e7c9686776" "4870e6cb6f0a70c14ee73db30b69a8a1f08d6ec9a689c366e88636fb81e8022d" "e439d894bf9406baf73056cf7e3c913ee5c794b6adadbbb9f614aebed0fd9ce7" "cf2bb5e8046ca363183c87e8d33932f2a76a3d705b9db2721631777bbce92968" default)))
 '(ecb-auto-expand-tag-tree (quote all))
 '(ecb-auto-update-methods-after-save t)
 '(ecb-expand-methods-switch-off-auto-expand nil)
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote (("/Users/olsson/Wunderkraut/Platforms" "Wunderkraut"))))
 '(foreground-color "#626262"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
