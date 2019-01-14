;;; init-swift.el --- so functional, so swift, so lsp -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(require-package 'lsp-sourcekit)
(setenv "SOURCEKIT_TOOLCHAIN_PATH" "/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2018-01-10-a.xctoolchain")
(setq lsp-sourcekit-executable (expand-file-name "~/git/sourcekit-lsp/.build/debug/sourcekit-lsp"))

(provide 'init-lisp)
;;; init-swift.el ends here
