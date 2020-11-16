compile:
	emacs --batch --eval '(byte-compile-file "init.el")'
	emacs --batch --eval '(byte-recompile-directory "./lisp/" 0)'

clean:
	rm -f *.elc
	rm -f lisp/*.elc


