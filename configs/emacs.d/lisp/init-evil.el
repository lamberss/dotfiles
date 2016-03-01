(use-package evil
  :ensure t
  :config
  (evil-mode t)

  (use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode))

  (use-package evil-jumper
    :ensure t
    :config
    (global-evil-jumper-mode))

  (use-package evil-surround
    :ensure t
    :config
    (global-evil-surround-mode))

  (use-package evil-indent-textobject
    :ensure t))


(provide 'init-evil)
