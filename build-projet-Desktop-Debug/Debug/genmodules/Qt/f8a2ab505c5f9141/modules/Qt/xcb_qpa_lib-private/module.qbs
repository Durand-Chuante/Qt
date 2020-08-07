import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "XcbQpa"
    Depends { name: "Qt"; submodules: ["core","gui"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["dl","X11-xcb","Xi","xcb-render-util","SM","ICE","xcb-render","dbus-1","xcb","xcb-image","xcb-icccm","xcb-sync","xcb-xfixes","xcb-shm","xcb-randr","xcb-shape","xcb-keysyms","xcb-xkb","xkbcommon-x11","Qt5PlatformSupport","fontconfig","freetype","gthread-2.0","glib-2.0","Xrender","Xext","X11","m","input","xkbcommon","udev","mtdev","EGL","GL"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5XcbQpa"
    libNameForLinkerRelease: "Qt5XcbQpa"
    libFilePathDebug: undefined
    libFilePathRelease: "/usr/lib/x86_64-linux-gnu/libQt5XcbQpa.so.5.5.1"
    pluginTypes: []
    moduleConfig: ["lex","yacc","depend_includepath","testcase_targets","import_plugins","import_qpa_plugin","qt","warn_on","release","link_prl","incremental","shared","qpa","no_mocdepend","release","qt_no_framework","linux","unix","posix","gcc","compile_examples","system-sqlite","qpa","largefile","nostrip","precompile_header","use_gold_linker","enable_new_dtags","sse2","sse3","ssse3","sse4_1","sse4_2","avx","avx2","prefix_build","force_independent","create_prl","link_prl","prepare_docs","qt_docs_targets","no_private_qt_headers_warning","QTDIR_build","exceptions_off","testcase_exceptions","qt_example_installs","warning_clean","no_module_headers","internal_module","qmake_cache","target_qt","need_fwd_pri","qt_install_module","c++11","hide_symbols","bsymbolic_functions","compiler_supports_fpmath","create_pc","create_libtool","explicitlib","qpa/genericunixfontdatabase","have_target","dll","qpa/basicunixfontdatabase","thread","opengl","dbusadaptors","dbusinterfaces","moc","resources"]
    cpp.defines: ["QT_XCB_QPA_LIB_LIB"]
    cpp.includePaths: ["/usr/include/x86_64-linux-gnu/qt5","/usr/include/x86_64-linux-gnu/qt5/QtQGui","/usr/include/x86_64-linux-gnu/qt5/QtGui/5.5.1","/usr/include/x86_64-linux-gnu/qt5/QtGui/5.5.1/QtGui"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["xcb_qpa_lib-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
