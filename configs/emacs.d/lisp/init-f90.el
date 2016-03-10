(add-hook 'f90-mode-hook
	  '(lambda () (setq f90-do-indent 4
			    f90-if-indent 4
			    f90-type-indent 4
			    f90-program-indent 4
			    f90-continuation-indent-6)))

(provide 'init-f90)
