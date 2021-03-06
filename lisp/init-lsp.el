;;; init-lsp.el --- LANGUAGE SERVER PROTOCOL BOIS -*- lexical-binding: t -*-

;;; Commentary:
;;; Used for all languages that support lsp

;;; Code:

(require-package 'lsp-mode)
(setq lsp-inhibit-message t
      lsp-eldoc-render-all nil)



(with-eval-after-load 'company
  (require-package 'company-lsp)
  (setq company-lsp-enable-snippet t
        company-lsp-cache-candidates t))



(require-package 'lsp-ui)
(use-package lsp-ui
  :ensure t
  :init
  (setq  lsp-ui-sideline-enable t
         lsp-ui-sideline-show-symbol t
         lsp-ui-sideline-show-hover t
         lsp-ui-sideline-show-code-actions t
         lsp-ui-sideline-update-mode 'point
         lsp-prefer-flymake nil)
  :bind (("C-c C-l a" . lsp-ui-sideline-apply-code-actions)))

(provide 'init-lsp)
;;; init-editing-utils.el ends here
