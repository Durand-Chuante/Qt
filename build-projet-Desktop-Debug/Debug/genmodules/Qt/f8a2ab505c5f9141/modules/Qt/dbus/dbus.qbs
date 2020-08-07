import qbs.FileInfo
import qbs.ModUtils
import "../QtModule.qbs" as QtModule
import "dbus.js" as DBus

QtModule {
    qtModuleName: "DBus"

    property string xml2cppName: "qdbusxml2cpp"
    property stringList xml2CppHeaderFlags: []
    property stringList xml2CppSourceFlags: []

    Rule {
        inputs: ["qt.dbus.adaptor"]

        Artifact {
            filePath: FileInfo.joinPaths(input.moduleProperty("Qt.core", "generatedHeadersDir"),
                                         DBus.outputFileName(input, "_adaptor.h"))
            fileTags: ["hpp"]
        }
        Artifact {
            filePath: DBus.outputFileName(input, "_adaptor.cpp")
            fileTags: ["cpp"]
        }

        prepare: {
            return DBus.createCommands(product, input, outputs, "-a");
        }
    }

    Rule {
        inputs: ["qt.dbus.interface"]

        Artifact {
            filePath: FileInfo.joinPaths(input.moduleProperty("Qt.core", "generatedHeadersDir"),
                                         DBus.outputFileName(input, "_interface.h"))
            fileTags: ["hpp"]
        }
        Artifact {
            filePath: DBus.outputFileName(input, "_interface.cpp")
            fileTags: ["cpp"]
        }

        prepare: {
            return DBus.createCommands(product, input, outputs, "-p");
        }
    }

    architectures: ["x86_64"]
    targetPlatform: "linux"
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
    libNameForLinkerDebug: "Qt5DBus"
    libNameForLinkerRelease: "Qt5DBus"
    libFilePathDebug: undefined
    libFilePathRelease: "/usr/lib/x86_64-linux-gnu/libQt5DBus.so.5.5.1"
    pluginTypes: []
    moduleConfig: ["lex","yacc","depend_includepath","testcase_targets","import_plugins","import_qpa_plugin","qt","warn_on","release","link_prl","incremental","shared","qpa","no_mocdepend","release","qt_no_framework","linux","unix","posix","gcc","compile_examples","system-sqlite","qpa","largefile","nostrip","precompile_header","use_gold_linker","enable_new_dtags","sse2","sse3","ssse3","sse4_1","sse4_2","avx","avx2","prefix_build","force_independent","create_prl","link_prl","prepare_docs","qt_docs_targets","no_private_qt_headers_warning","QTDIR_build","exceptions_off","testcase_exceptions","qt_example_installs","warning_clean","link_pkgconfig","qmake_cache","target_qt","need_fwd_pri","qt_install_module","c++11","hide_symbols","bsymbolic_functions","qt_install_headers","create_cmake","compiler_supports_fpmath","create_pc","create_libtool","explicitlib","have_target","dll","thread","moc","resources"]

    cpp.defines: ["QT_DBUS_LIB"]
    cpp.includePaths: ["/usr/include/x86_64-linux-gnu/qt5","/usr/include/x86_64-linux-gnu/qt5/QtDBus"]
    cpp.libraryPaths: []

    Group {
        files: [Qt["dbus"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}

