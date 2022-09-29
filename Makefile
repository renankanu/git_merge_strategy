.PHONY: run_merge
BRANCH := $(shell git branch --show-current)


# Adding a help file: https://gist.github.com/prwhite/8168133#gistcomment-1313022
help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

run_merge: ## Run Merge
ifneq ($(BRANCH), main)
	@echo "╠ Committing..."
	$(info Checking if custom header is needed)
	$(info $(BRANCH))
else
	@echo "❕ You are in the main branch ... ❕"
	@echo "🔸 example: \033[1;33mgit branch another_branch\033[0m"
endif