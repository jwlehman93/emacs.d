;;; init-elixir.el -- Elixir of Happiness  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require-package 'elixir-mode)
(require-package 'alchemist)

(add-to-list 'elixir-mode-hook (alchemist-mode +1))
(provide 'init-elixir)
;;; init-elixir.el ends here
