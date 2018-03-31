.PHONY: default
default: serve ;

serve:
	mkdocs serve -a 0.0.0.0:4000
