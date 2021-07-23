FLUTTER ?= flutter
FLUTTERRUN ?= $(FLUTTER) run
FLUTTERBUILD ?= $(FLUTTER) build
FIREBASE ?= firebase
FIREBASEDEPLOY ?= $(FIREBASE) deploy


################################################################################
## run  targets
################################################################################
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

.PHONY: deploy
deploy:
	$(FIREBASEDEPLOY) 