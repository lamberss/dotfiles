(defun sel-pop-to-file (file &optional split)
  "Visit a FILE, either in the current window or a SPLIT."
  (if split
      (find-file-other-window file)
    (find-file file)))

(defun sel-datestamp ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun sel-timestamp ()
  (interactive)
  (insert (format-time-string "%Y-%m-%dT%H:%M:%S")))

(provide 'init-global-functions)
