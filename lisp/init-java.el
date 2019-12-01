;;; init-java -- init settings for java

;;; Commentary:

;;; Code:

(use-package lsp-java :ensure t :after lsp
             :config (add-hook 'java-mode-hook 'lsp))

(use-package treemacs :ensure t)
(use-package dap-mode
             :ensure t :after lsp-mode
             :config
             (dap-mode t)
             (dap-ui-mode t))

(use-package hydra :ensure t)
(use-package dap-java :after (lsp-java))

(provide 'init-java)
;;; init-java.el ends here
