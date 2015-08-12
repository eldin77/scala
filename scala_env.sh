#!/bin/sh
clear
echo "brew install"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "scala install"
brew install
brew install scala
brew install sbt

echo "scala env setting"
echo 'SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=256M -XX:MaxPermSize=512M -Xmx2G"' >> ~/.sbtconfig

echo "scala vim setting"
mkdir -p ~/.vim/{ftdetect,indent,syntax} && for d in ftdetect indent syntax ; do curl -o ~/.vim/$d/scala.vim https://raw.githubusercontent.com/derekwyatt/vim-scala/master/$d/scala.vim; done

echo "Script Finished.."
