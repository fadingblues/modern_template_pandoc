SOURCE=demo
MD_EXTENSION=md
OUTPUT=demo
LANGUAGE=it
SETTINGS_FILE='settings.tex'
# Options are pygments (the default), kate, monochrome, espresso, zenburn, haddock, and tango
HIGHLIGHT=espresso
# Font specs
MAINFONT='DejaVu Sans'
SANSFONT='PT Sans'
MONOFONT='DejaVu Sans Mono'



default:
	@pandoc -t beamer --latex-engine=xelatex --highlight-style=${HIGHLIGHT} -H ${SETTINGS_FILE} -V mainfont=${MAINFONT} -V sansfont=${SANSFONT} -V monofont=${MONOFONT} -V lang=${LANGUAGE} -V theme:m -o ${OUTPUT}.pdf ${SOURCE}.${MD_EXTENSION}
	@pandoc -t beamer -s --latex-engine=xelatex --highlight-style=${HIGHLIGHT} -H ${SETTINGS_FILE} -V mainfont=${MAINFONT} -V sansfont=${SANSFONT} -V monofont=${MONOFONT} -V lang=${LANGUAGE} -V theme:m -o ${OUTPUT}.tex ${SOURCE}.${MD_EXTENSION}
	@echo "All done!"
	@open ${OUTPUT}.pdf
