OUTPUT=hello_1.0_amd64.deb
DIST_DIR=dist/

build: ${OUTPUT}

${OUTPUT}:
	dpkg -b deb ${OUTPUT}

clean:
	rm -f ${BIST_DIR}*