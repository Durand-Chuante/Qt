import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bootstrap"
    Depends { name: "Qt"; submodules: []}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Bootstrap"
    libNameForLinkerRelease: "Qt5Bootstrap"
    libFilePathDebug: undefined
    libFilePathRelease: undefined
    pluginTypes: []
    moduleConfig: []
    cpp.defines: ["QT_BOOTSTRAP_LIB","QT_BOOTSTRAPPED","QT_LITE_UNICODE","QT_NO_CAST_TO_ASCII","QT_NO_CODECS","QT_NO_DATASTREAM","QT_NO_LIBRARY","QT_NO_QOBJECT","QT_NO_SYSTEMLOCALE","QT_NO_THREAD","QT_NO_UNICODETABLES","QT_NO_USING_NAMESPACE","QT_NO_DEPRECATED","QT_NO_TRANSLATION"]
    cpp.includePaths: ["/usr/include/x86_64-linux-gnu/qt5","/usr/include/x86_64-linux-gnu/qt5/QtCore","/usr/include/x86_64-linux-gnu/qt5/QtXml","/usr/include/x86_64-linux-gnu/qt5/QtCore/5.5.1","/usr/include/x86_64-linux-gnu/qt5/QtCore/5.5.1/QtCore","/usr/include/x86_64-linux-gnu/qt5/QtXml/5.5.1","/usr/include/x86_64-linux-gnu/qt5/QtXml/5.5.1/QtXml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["bootstrap-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
