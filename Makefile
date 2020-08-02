OUTPUT=hello_1.1_amd64.deb
DIST_DIR=dist/

build: ${OUTPUT}

${OUTPUT}:
	dpkg -b deb ${DIST_DIR}${OUTPUT}

install: build
	dpkg -i ${DIST_DIR}${OUTPUT}

package:
	cd repo && dpkg-scanpackages -m . > Packages

clean:
	rm -f ${BIST_DIR}*