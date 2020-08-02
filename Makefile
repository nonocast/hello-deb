OUTPUT=hello_1.0_amd64.deb
DIST_DIR=dist/

build: ${OUTPUT}

${OUTPUT}:
	dpkg -b deb ${DIST_DIR}${OUTPUT}

install:
	dpkg -i ${DIST_DIR}${OUTPUT}

clean:
	rm -f ${BIST_DIR}*