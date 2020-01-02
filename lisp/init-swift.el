;;; init-swift.el --- so functional, so swift, so lsp -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(use-package swift-mode
  :ensure t
  :config
  (use-package flycheck-swiftlint :ensure t)
  (add-hook 'swift-mode-hook 'lsp)
  )

(use-package lsp-sourcekit :ensure t :after lsp-mode
  :config
  (setenv "SOURCEKIT_TOOLCHAIN_PATH" "/Library/Developer/Toolchains/swift-latest.xctoolchain")
  (setq lsp-sourcekit-executable (expand-file-name "~/git/lib/sourcekit-lsp/.build/debug/sourcekit-lsp"))
  (add-hook 'swift-mode-hook 'lsp))

(provide 'init-swift)
;;; init-swift.el ends here
