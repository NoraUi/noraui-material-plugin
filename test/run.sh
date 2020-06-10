cd $(dirname $0)
cd ..
pwd

echo "TRAVIS_REPO_SLUG is $TRAVIS_REPO_SLUG"
echo "TRAVIS_BRANCH is $TRAVIS_BRANCH"
echo "TRAVIS_PULL_REQUEST is $TRAVIS_PULL_REQUEST"

if [ "$TRAVIS_REPO_SLUG" == 'NoraUi/noraui-material-plugin' ] && [ "$TRAVIS_BRANCH" == 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    mvn -e -U clean package --settings test/mvnsettings.xml
fi
echo "***************   END build of noraui-material-plugin  ***************"
exit 0
