#!/bin/bash
ROOT_DIR=$(dirname $0)
CHROME_DIR="$ROOT_DIR/chrome"
CHROME_CONTENT_DIR="$CHROME_DIR/content"

COMMAND_ZIP=zip
COMMAND_ZIP_RECURSIVE_OPTION=-r

JAR_FILENAME=alc.jar
XPI_FILENAME=alc.xpi
INSTALL_RDF=install.rdf
CHROME_MANIFEST=chrome.manifest

pushd $ROOT_DIR

dirclean -rv

pushd $CHROME_DIR
$COMMAND_ZIP $COMMAND_ZIP_RECURSIVE_OPTION $JAR_FILENAME $(basename $CHROME_CONTENT_DIR)
popd

$COMMAND_ZIP $XPI_FILENAME "$(basename $CHROME_DIR)/$JAR_FILENAME" $CHROME_MANIFEST $INSTALL_RDF

popd
