# scala max os 환경설정
##dependency
java jdk 1.6+ 이상

java export JAVA_HOME 설정 

## homebrew install
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## scala install
```
brew install
brew install scala
brew install sbt
```

## env setting
```
$echo 'SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=256M -XX:MaxPermSize=512M -Xmx2G"' >> ~/.sbtconfig
```

### Dev Tool 선택

## scala-vim plugin
```
vim 사용하고 싶으면: 
mkdir -p ~/.vim/{ftdetect,indent,syntax} && for d in ftdetect indent syntax ; do curl -o ~/.vim/$d/scala.vim https://raw.githubusercontent.com/derekwyatt/vim-scala/master/$d/scala.vim; done

참고 : https://github.com/derekwyatt/vim-scala  
```

## ScalaIDE for Eclipse
Eclipse 를 사용하고 싶으면:
http://scala-ide.org/download/sdk.html
download 이후 설치없이 실행

