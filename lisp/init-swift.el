;;; init-swift.el --- so functional, so swift, so lsp -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(require 'lsp-sourcekit)
(setenv "SOURCEKIT_TOOLCHAIN_PATH" "/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2018-11-01-a.xctoolchain")
(setq lsp-sourcekit-executable (expand-file-name "<path_to_sourcekit-lsp_executable>"))

(provide 'init-lisp)
;;; init-swift.el ends here
