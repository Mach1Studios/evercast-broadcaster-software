### Instructions for xcode dev env of EBS

- run `./CI/install-dependencies-osx.sh`
- run `./CI/before-deploy-osx.sh`
- edit paths as needed for `./CI/make-xcode-prj.sh`
- run `./CI/make-excode-prj.sh`
- build install scheme (or subprj?), change scheme settings to run app after build:
`Evercast/evercast-broadcaster-software/build/rundir/Debug/bin/EBS`
- then add the following (with adjusted paths) to the postbuild script for EBS subprj
```
install_name_tool -change /usr/local/opt/qt/lib/QtGui.framework/Versions/5/QtGui /usr/local/Cellar/qt/5.14.1/Frameworks/QtGui.framework/Versions/5/QtGui [CHANGE_ME-PATH_TO]/Evercast/evercast-broadcaster-software/build/rundir/Debug/bin/EBS 
install_name_tool -change /usr/local/opt/qt/lib/QtCore.framework/Versions/5/QtCore /usr/local/Cellar/qt/5.14.1/Frameworks/QtCore.framework/Versions/5/QtCore [CHANGE_ME-PATH_TO]/Evercast/evercast-broadcaster-software/build/rundir/Debug/bin/EBS 
install_name_tool -change /usr/local/opt/qt/lib/QtWidgets.framework/Versions/5/QtWidgets /usr/local/Cellar/qt/5.14.1/Frameworks/QtWidgets.framework/Versions/5/QtWidgets [CHANGE_ME-PATH_TO]/Evercast/evercast-broadcaster-software/build/rundir/Debug/bin/EBS 
install_name_tool -change /usr/local/opt/qt/lib/QtMacExtras.framework/Versions/5/QtMacExtras /usr/local/Cellar/qt/5.14.1/Frameworks/QtMacExtras.framework/Versions/5/QtMacExtras [CHANGE_ME-PATH_TO]/Evercast/evercast-broadcaster-software/build/rundir/Debug/bin/EBS 
install_name_tool -change /usr/local/opt/qt/lib/QtSvg.framework/Versions/5/QtSvg /usr/local/Cellar/qt/5.14.1/Frameworks/QtSvg.framework/Versions/5/QtSvg [CHANGE_ME-PATH_TO]/Evercast/evercast-broadcaster-software/build/rundir/Debug/bin/EBS 
```
