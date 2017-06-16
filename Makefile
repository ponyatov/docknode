CWD = $(CURDIR)

.PHONY: go
go: cogserver
	docker run -it $<

.PHONY: cogserver
cogserver:
	docker build -t $@ $@/

.PHONY: gitclone
gitclone:
	docker build -t $@ $@/

.PHONY: buildnode
buildnode:
	docker build -t $@ $@/

.PHONY: update
update: cogutils/README.md atomspace/README.md opencog/README.md
	cd cogutils ; git pull --depth=1
.PHONY: clone
clone: cogutils/README.md atomspace/README.md opencog/README.md
cogutils/README.md:
	git clone -o gh --depth=1 https://github.com/opencog/cogutils.git
atomspace/README.md:
	git clone -o gh --depth=1 https://github.com/opencog/atomspace.git
opencog/README.md:
	git clone -o gh --depth=1 https://github.com/opencog/opencog.git
