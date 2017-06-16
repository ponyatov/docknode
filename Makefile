CWD = $(CURDIR)

.PHONY: go
go: opencog
	docker run -it $<

.PHONY: opencog
opencog:
	docker build -t $@ $@/

.PHONY: gitclone
gitclone: update
	docker build -t $@ $@/

.PHONY: buildnode
buildnode:
	docker build -t $@ $@/

READMEZ = gitclone/cogutils/README.md gitclone/atomspace/README.md gitclone/opencog/README.md 
.PHONY: update
update: $(READMEZ)
	cd gitclone/cogutils ; git pull --depth=1
	cd gitclone/atomspace ; git pull --depth=1
	cd gitclone/opencog ; git pull --depth=1
.PHONY: clone
clone: $(READMEZ)
gitclone/cogutils/README.md:
	cd gitclone ; git clone -o gh --depth=1 https://github.com/opencog/cogutils.git
gitclone/atomspace/README.md:
	cd gitclone ; git clone -o gh --depth=1 https://github.com/opencog/atomspace.git 
gitclone/opencog/README.md:
	cd gitclone ; git clone -o gh --depth=1 https://github.com/opencog/opencog.git
