SOURCE=demo
MD_EXTENSION=md
OUTPUT=demo
LANGUAGE=it



default:
	@pandoc -t beamer --latex-engine=xelatex -V lang=${LANGUAGE} -V theme:m -o ${OUTPUT}.pdf ${SOURCE}.${MD_EXTENSION}
	@echo "All done!"
	@open ${OUTPUT}.pdf
