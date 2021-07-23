FLUTTER ?= flutter
FLUTTERRUN ?= $(FLUTTER) run
FLUTTERBUILD ?= $(FLUTTER) build
FIREBASE ?= firebase
FIREBASEDEPLOY ?= $(FIREBASE) deploy


################################################################################
## run  targets
################################################################################
.PHONY: rundev
.PHONY: run
run: 
	$(FLUTTERRUN) -d chrome

################################################################################
## build targets
################################################################################

.PHONY: build
build:
	$(FLUTTERBUILD) web
	
################################################################################
## deploy targets
################################################################################

.PHONY: build
build:
	$(FIREBASEDEPLOY) 