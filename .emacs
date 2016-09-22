(global-set-key "\C-h" 'delete-backward-char)
(setq load-path (cons "~/.emacs.d" load-path))
;;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;;; for cloudformation
(require 'cloudformation-mode)
(add-to-list 'auto-mode-alist '("\\.json$" . cloudformation-mode))
(add-to-list 'auto-mode-alist '("\\.template$" . cloudformation-mode))

;;; パッケージシステム設定
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))
(define-key yaml-mode-map "\C-m" 'newline-and-indent)
