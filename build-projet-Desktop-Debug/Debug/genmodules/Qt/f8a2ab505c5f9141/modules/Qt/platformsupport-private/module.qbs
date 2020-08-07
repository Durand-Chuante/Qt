import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PlatformSupport"
    Depends { name: "Qt"; submodules: ["core-private","gui-private"]}

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
    libNameForLinkerDebug: "Qt5PlatformSupport"
    libNameForLinkerRelease: "Qt5PlatformSupport"
    libFilePathDebug: undefined
    libFilePathRelease: undefined
    pluginTypes: []
    moduleConfig: []
    cpp.defines: ["QT_PLATFORMSUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/x86_64-linux-gnu/qt5","/usr/include/x86_64-linux-gnu/qt5/QtPlatformSupport","/usr/include/x86_64-linux-gnu/qt5/QtPlatformSupport/5.5.1","/usr/include/x86_64-linux-gnu/qt5/QtPlatformSupport/5.5.1/QtPlatformSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["platformsupport-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
