build: init.el lisp/key-bindings.el lisp/misc.el lisp/mode-specific.el lisp/sql-connections.el
	emacs --batch --eval '(byte-compile-file "init.el")'
	emacs --batch --eval '(byte-compile-file "lisp/key-bindings.el")'
	emacs --batch --eval '(byte-compile-file "lisp/misc.el")'
	emacs --batch --eval '(byte-compile-file "lisp/mode-specific.el")'
	emacs --batch --eval '(byte-compile-file "lisp/sql-connections.el")'

clean:
	rm init.elc
	rm lisp/key-bindings.elc
	rm lisp/misc.elc
	rm lisp/mode-specific.elc
	rm lisp/sql-connections.elc

