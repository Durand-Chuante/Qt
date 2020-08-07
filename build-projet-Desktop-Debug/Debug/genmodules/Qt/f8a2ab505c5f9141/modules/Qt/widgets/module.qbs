import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Widgets"
    Depends { name: "Qt"; submodules: ["core","gui"]}

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
    libNameForLinkerDebug: "Qt5Widgets"
    libNameForLinkerRelease: "Qt5Widgets"
    libFilePathDebug: undefined
    libFilePathRelease: "/usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.5.1"
    pluginTypes: ["styles"]
    moduleConfig: ["lex","yacc","depend_includepath","testcase_targets","import_plugins","import_qpa_plugin","qt","warn_on","release","link_prl","incremental","shared","qpa","no_mocdepend","release","qt_no_framework","linux","unix","posix","gcc","compile_examples","system-sqlite","qpa","largefile","nostrip","precompile_header","use_gold_linker","enable_new_dtags","sse2","sse3","ssse3","sse4_1","sse4_2","avx","avx2","prefix_build","force_independent","create_prl","link_prl","prepare_docs","qt_docs_targets","no_private_qt_headers_warning","QTDIR_build","exceptions_off","testcase_exceptions","qt_example_installs","warning_clean","uic","qmake_cache","target_qt","need_fwd_pri","qt_install_module","c++11","hide_symbols","bsymbolic_functions","qt_install_headers","create_cmake","compiler_supports_fpmath","create_pc","create_libtool","explicitlib","x11","have_target","dll","x11lib","x11inc","thread","opengl","moc","resources"]
    cpp.defines: ["QT_WIDGETS_LIB"]
    cpp.includePaths: ["/usr/include/x86_64-linux-gnu/qt5","/usr/include/x86_64-linux-gnu/qt5/QtWidgets"]
    cpp.libraryPaths: ["/usr/X11R6/lib64"]
    Group {
        files: [Qt["widgets"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
