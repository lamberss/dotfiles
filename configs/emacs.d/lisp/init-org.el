(use-package org
  :ensure t
  :defer t
  :bind (("C-c c" . sel-org-task-capture)
	 ("C-c t t" . sel-pop-to-org-todo)
	 ("C-c t a" . sel-pop-to-org-agenda))
  :config
  (setq org-log-done t)
  (setq org-todo-keywords
	'((sequence "TODO" "IN-PROGRESS" "WAITING" "|" "DONE" "CANCELED")))
  (setq org-agenda-files '("~/org/"))

  (setq org-capture-templates
	'(("t" "My TODO task format." entry
	   (file "todo.org")
	   "* TODO %?
SCHEDULED: %t")))

  (defun sel-org-task-capture ()
    "Capture a task with my default template."
    (interactive)
    (org-capture nil "t"))

  (defun sel-pop-to-org-todo (split)
    "Visit my main TODO list, in the current window or a SPLIT."
    (interactive "P")
    (sel-pop-to-file "~/org/todo.org" split))

  (defun sel-pop-to-org-agenda (split)
    "Visit the org agenda, in the current window or a SPLIT."
    (interactive "P")
    (org-agenda-list)
    (when (not split)
      (delete-other-windows)))
  
  )

(provide 'init-org)
