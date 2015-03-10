
(directory (make-pathname :name :wild :type :wild :defaults home-dir))
(defpackage :com.gigamonkeys.pathnames
	(:use :common-lisp)
	(:export
	:list-directory
	:file-exists-p
	:directory-pathname-p
	:file-pathname-p
	:pathname-as-directory
	:walk-directory
	:directory-p
	:file-p))