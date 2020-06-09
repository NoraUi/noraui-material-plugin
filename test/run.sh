cd $(dirname $0)
mvn clean -q package
rm -rf target
exit
