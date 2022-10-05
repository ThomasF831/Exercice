all: test_my_list.ml rapport.pdf

test_my_list: my_list.ml
	ocamlc my_list.ml test_my_list.ml -o test_my_list

rapport.pdf: rapport.tex
	pdflatex rapport.tex
