;;; init-swift.el --- so functional, so swift, so lsp -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(use-package swift-mode :ensure t)

(use-package lsp-sourcekit :ensure t :after lsp
  :config
  (setenv "SOURCEKIT_TOOLCHAIN_PATH" "/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2019-01-10-a.xctoolchain")
  (setq lsp-sourcekit-executable (expand-file-name "~/git/sourcekit-lsp/.build/debug/sourcekit-lsp"))
  (add-hook 'swift-mode-hook 'lsp))

(provide 'init-swift)
;;; init-swift.el ends here
