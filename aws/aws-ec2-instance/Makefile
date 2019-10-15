XLD_URL=http://localhost:4516

all: xebialabs

build:
	echo "Build Done!"
terraform:
	terrarform init
	terraform apply

xebialabs: build	
	xl --xl-deploy-url $(XLD_URL) apply -s --proceed-when-dirty -f xebialabs.yaml


