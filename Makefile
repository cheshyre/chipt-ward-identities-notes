sources = $(shell find . -name '*.md' | grep -v "README.md" | grep -v "eisvogel-physics")
targets = $(subst .md,.pdf,$(sources))

all: $(targets)

test:
	echo $(targets)

.SECONDEXPANSION:

$(targets) : % : $$(subst .pdf,.md,$$@) eisvogel-physics/eisvogel-physics.tex
	pandoc $< --from markdown --template ./eisvogel-physics/eisvogel-physics.tex --listings -o $@
