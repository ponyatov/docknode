CWD = $(CURDIR)

.PHONY: gitclone
gitclone:
	docker build -t $@ $@/

.PHONY: buildnode
buildnode:
	docker build -t $@ $@/

.PHONY: go
go: opencog
	docker run -it opencog

.PHONY: opencog
opencog:
	docker build -t $@ build/

.PHONY: update
update: cogutils/README.md
	cd cogutils ; git pull --depth=1

.PHONY: clone
clone: cogutils/README.md
cogutils/README.md:
	git clone -o gh --depth=1 https://github.com/opencog/cogutils.git
