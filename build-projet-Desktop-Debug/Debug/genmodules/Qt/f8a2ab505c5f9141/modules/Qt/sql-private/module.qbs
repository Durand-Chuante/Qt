import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Sql"
    Depends { name: "Qt"; submodules: ["sql"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: false
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
    libNameForLinkerDebug: undefined
    libNameForLinkerRelease: undefined
    libFilePathDebug: undefined
    libFilePathRelease: undefined
    pluginTypes: []
    moduleConfig: []
    cpp.defines: []
    cpp.includePaths: ["/usr/include/x86_64-linux-gnu/qt5/QtSql/5.5.1","/usr/include/x86_64-linux-gnu/qt5/QtSql/5.5.1/QtSql"]
    cpp.libraryPaths: []
    
}
