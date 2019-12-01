;;; init-flutter.el --- Flutter by googley eyes -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(defun dart-before-save-hook ()
  "Formats dart files before saving similar to gofm-before-save-hook."
  (when (eq major-mode 'dart-mode) (#'dart-format)))

(use-package dart-mode
  :ensure t
  :init
  (setq dart-format-on-save t
        dart-sdk-path "~/git/lib/flutter/bin/cache/dart-sdk/")
  :config
  (add-hook 'dart-mode-hook 'lsp))

(use-package flutter
  :ensure t
  :after (dart-mode company)
  :init
  (setq company-minimum-prefix-length 0)
  :bind (:map dart-mode-map
              ("C-M-x" . #'flutter-run-or-hot-reload))
  :custom
  (flutter-sdk-path "~/git/lib/flutter/"))

(provide 'init-flutter)
;;; init-flutter.el ends here
