{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { bundled-binary-generic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Cabal"; version = "3.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2003-2020, Cabal Development Team (see AUTHORS file)";
      maintainer = "cabal-devel@haskell.org";
      author = "Cabal Development Team <cabal-devel@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "A framework for packaging Haskell software";
      description = "The Haskell Common Architecture for Building Applications and\nLibraries: a framework defining a common interface for authors to more\neasily build their Haskell applications in a portable way.\n\nThe Haskell Cabal is part of a larger infrastructure for distributing,\norganizing, and cataloging Haskell libraries and tools.";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [
        "README.md"
        "tests/README.md"
        "ChangeLog.md"
        "doc/bugs-and-stability.rst"
        "doc/concepts-and-development.rst"
        "doc/conf.py"
        "doc/config-and-install.rst"
        "doc/developing-packages.rst"
        "doc/images/Cabal-dark.png"
        "doc/index.rst"
        "doc/installing-packages.rst"
        "doc/intro.rst"
        "doc/misc.rst"
        "doc/nix-local-build-overview.rst"
        "doc/nix-local-build.rst"
        "doc/file-format-changelog.rst"
        "doc/README.md"
        "doc/references.inc"
        "tests/ParserTests/errors/MiniAgda.cabal"
        "tests/ParserTests/errors/MiniAgda.errors"
        "tests/ParserTests/errors/anynone.cabal"
        "tests/ParserTests/errors/anynone.errors"
        "tests/ParserTests/errors/big-version.cabal"
        "tests/ParserTests/errors/big-version.errors"
        "tests/ParserTests/errors/common1.cabal"
        "tests/ParserTests/errors/common1.errors"
        "tests/ParserTests/errors/common2.cabal"
        "tests/ParserTests/errors/common2.errors"
        "tests/ParserTests/errors/common3.cabal"
        "tests/ParserTests/errors/common3.errors"
        "tests/ParserTests/errors/forward-compat.cabal"
        "tests/ParserTests/errors/forward-compat.errors"
        "tests/ParserTests/errors/forward-compat2.cabal"
        "tests/ParserTests/errors/forward-compat2.errors"
        "tests/ParserTests/errors/forward-compat3.cabal"
        "tests/ParserTests/errors/forward-compat3.errors"
        "tests/ParserTests/errors/issue-5055-2.cabal"
        "tests/ParserTests/errors/issue-5055-2.errors"
        "tests/ParserTests/errors/issue-5055.cabal"
        "tests/ParserTests/errors/issue-5055.errors"
        "tests/ParserTests/errors/leading-comma-2.cabal"
        "tests/ParserTests/errors/leading-comma-2.errors"
        "tests/ParserTests/errors/leading-comma-2b.cabal"
        "tests/ParserTests/errors/leading-comma-2b.errors"
        "tests/ParserTests/errors/leading-comma-2c.cabal"
        "tests/ParserTests/errors/leading-comma-2c.errors"
        "tests/ParserTests/errors/leading-comma.cabal"
        "tests/ParserTests/errors/leading-comma.errors"
        "tests/ParserTests/errors/libpq1.cabal"
        "tests/ParserTests/errors/libpq1.errors"
        "tests/ParserTests/errors/libpq2.cabal"
        "tests/ParserTests/errors/libpq2.errors"
        "tests/ParserTests/errors/mixin-1.cabal"
        "tests/ParserTests/errors/mixin-1.errors"
        "tests/ParserTests/errors/mixin-2.cabal"
        "tests/ParserTests/errors/mixin-2.errors"
        "tests/ParserTests/errors/multiple-libs.cabal"
        "tests/ParserTests/errors/multiple-libs.errors"
        "tests/ParserTests/errors/noVersion.cabal"
        "tests/ParserTests/errors/noVersion.errors"
        "tests/ParserTests/errors/noVersion2.cabal"
        "tests/ParserTests/errors/noVersion2.errors"
        "tests/ParserTests/errors/range-ge-wild.cabal"
        "tests/ParserTests/errors/range-ge-wild.errors"
        "tests/ParserTests/errors/removed-fields.cabal"
        "tests/ParserTests/errors/removed-fields.errors"
        "tests/ParserTests/errors/spdx-1.cabal"
        "tests/ParserTests/errors/spdx-1.errors"
        "tests/ParserTests/errors/spdx-2.cabal"
        "tests/ParserTests/errors/spdx-2.errors"
        "tests/ParserTests/errors/spdx-3.cabal"
        "tests/ParserTests/errors/spdx-3.errors"
        "tests/ParserTests/errors/undefined-flag.cabal"
        "tests/ParserTests/errors/undefined-flag.errors"
        "tests/ParserTests/errors/version-sets-1.cabal"
        "tests/ParserTests/errors/version-sets-1.errors"
        "tests/ParserTests/errors/version-sets-2.cabal"
        "tests/ParserTests/errors/version-sets-2.errors"
        "tests/ParserTests/errors/version-sets-3.cabal"
        "tests/ParserTests/errors/version-sets-3.errors"
        "tests/ParserTests/errors/version-sets-4.cabal"
        "tests/ParserTests/errors/version-sets-4.errors"
        "tests/ParserTests/ipi/Includes2.cabal"
        "tests/ParserTests/ipi/Includes2.expr"
        "tests/ParserTests/ipi/Includes2.format"
        "tests/ParserTests/ipi/internal-preprocessor-test.cabal"
        "tests/ParserTests/ipi/internal-preprocessor-test.expr"
        "tests/ParserTests/ipi/internal-preprocessor-test.format"
        "tests/ParserTests/ipi/issue-2276-ghc-9885.cabal"
        "tests/ParserTests/ipi/issue-2276-ghc-9885.expr"
        "tests/ParserTests/ipi/issue-2276-ghc-9885.format"
        "tests/ParserTests/ipi/transformers.cabal"
        "tests/ParserTests/ipi/transformers.expr"
        "tests/ParserTests/ipi/transformers.format"
        "tests/ParserTests/regressions/Octree-0.5.cabal"
        "tests/ParserTests/regressions/Octree-0.5.expr"
        "tests/ParserTests/regressions/Octree-0.5.format"
        "tests/ParserTests/regressions/anynone.cabal"
        "tests/ParserTests/regressions/anynone.expr"
        "tests/ParserTests/regressions/anynone.format"
        "tests/ParserTests/regressions/assoc-cpp-options.cabal"
        "tests/ParserTests/regressions/assoc-cpp-options.check"
        "tests/ParserTests/regressions/bad-glob-syntax.cabal"
        "tests/ParserTests/regressions/bad-glob-syntax.check"
        "tests/ParserTests/regressions/big-version.cabal"
        "tests/ParserTests/regressions/big-version.expr"
        "tests/ParserTests/regressions/big-version.format"
        "tests/ParserTests/regressions/cc-options-with-optimization.cabal"
        "tests/ParserTests/regressions/cc-options-with-optimization.check"
        "tests/ParserTests/regressions/common-conditional.cabal"
        "tests/ParserTests/regressions/common-conditional.expr"
        "tests/ParserTests/regressions/common-conditional.format"
        "tests/ParserTests/regressions/common.cabal"
        "tests/ParserTests/regressions/common.expr"
        "tests/ParserTests/regressions/common.format"
        "tests/ParserTests/regressions/common2.cabal"
        "tests/ParserTests/regressions/common2.expr"
        "tests/ParserTests/regressions/common2.format"
        "tests/ParserTests/regressions/common3.cabal"
        "tests/ParserTests/regressions/common3.expr"
        "tests/ParserTests/regressions/common3.format"
        "tests/ParserTests/regressions/cxx-options-with-optimization.cabal"
        "tests/ParserTests/regressions/cxx-options-with-optimization.check"
        "tests/ParserTests/regressions/denormalised-paths.cabal"
        "tests/ParserTests/regressions/denormalised-paths.check"
        "tests/ParserTests/regressions/elif.cabal"
        "tests/ParserTests/regressions/elif.expr"
        "tests/ParserTests/regressions/elif.format"
        "tests/ParserTests/regressions/elif2.cabal"
        "tests/ParserTests/regressions/elif2.expr"
        "tests/ParserTests/regressions/elif2.format"
        "tests/ParserTests/regressions/encoding-0.8.cabal"
        "tests/ParserTests/regressions/encoding-0.8.expr"
        "tests/ParserTests/regressions/encoding-0.8.format"
        "tests/ParserTests/regressions/extensions-paths-5054.cabal"
        "tests/ParserTests/regressions/extensions-paths-5054.check"
        "tests/ParserTests/regressions/generics-sop.cabal"
        "tests/ParserTests/regressions/generics-sop.expr"
        "tests/ParserTests/regressions/generics-sop.format"
        "tests/ParserTests/regressions/ghc-option-j.cabal"
        "tests/ParserTests/regressions/ghc-option-j.check"
        "tests/ParserTests/regressions/haddock-api-2.18.1-check.cabal"
        "tests/ParserTests/regressions/haddock-api-2.18.1-check.check"
        "tests/ParserTests/regressions/hasktorch.cabal"
        "tests/ParserTests/regressions/hasktorch.expr"
        "tests/ParserTests/regressions/hasktorch.format"
        "tests/ParserTests/regressions/hidden-main-lib.cabal"
        "tests/ParserTests/regressions/hidden-main-lib.expr"
        "tests/ParserTests/regressions/hidden-main-lib.format"
        "tests/ParserTests/regressions/indentation.cabal"
        "tests/ParserTests/regressions/indentation.expr"
        "tests/ParserTests/regressions/indentation.format"
        "tests/ParserTests/regressions/indentation2.cabal"
        "tests/ParserTests/regressions/indentation2.expr"
        "tests/ParserTests/regressions/indentation2.format"
        "tests/ParserTests/regressions/indentation3.cabal"
        "tests/ParserTests/regressions/indentation3.expr"
        "tests/ParserTests/regressions/indentation3.format"
        "tests/ParserTests/regressions/issue-5055.cabal"
        "tests/ParserTests/regressions/issue-5055.expr"
        "tests/ParserTests/regressions/issue-5055.format"
        "tests/ParserTests/regressions/issue-5846.cabal"
        "tests/ParserTests/regressions/issue-5846.expr"
        "tests/ParserTests/regressions/issue-5846.format"
        "tests/ParserTests/regressions/issue-6083-a.cabal"
        "tests/ParserTests/regressions/issue-6083-a.expr"
        "tests/ParserTests/regressions/issue-6083-a.format"
        "tests/ParserTests/regressions/issue-6083-b.cabal"
        "tests/ParserTests/regressions/issue-6083-b.expr"
        "tests/ParserTests/regressions/issue-6083-b.format"
        "tests/ParserTests/regressions/issue-6083-c.cabal"
        "tests/ParserTests/regressions/issue-6083-c.expr"
        "tests/ParserTests/regressions/issue-6083-c.format"
        "tests/ParserTests/regressions/issue-6083-pkg-pkg.cabal"
        "tests/ParserTests/regressions/issue-6083-pkg-pkg.expr"
        "tests/ParserTests/regressions/issue-6083-pkg-pkg.format"
        "tests/ParserTests/regressions/issue-6288-a.cabal"
        "tests/ParserTests/regressions/issue-6288-a.check"
        "tests/ParserTests/regressions/issue-6288-b.cabal"
        "tests/ParserTests/regressions/issue-6288-b.check"
        "tests/ParserTests/regressions/issue-6288-c.cabal"
        "tests/ParserTests/regressions/issue-6288-c.check"
        "tests/ParserTests/regressions/issue-6288-d.cabal"
        "tests/ParserTests/regressions/issue-6288-d.check"
        "tests/ParserTests/regressions/issue-6288-e.cabal"
        "tests/ParserTests/regressions/issue-6288-e.check"
        "tests/ParserTests/regressions/issue-6288-f.cabal"
        "tests/ParserTests/regressions/issue-6288-f.check"
        "tests/ParserTests/regressions/issue-774.cabal"
        "tests/ParserTests/regressions/issue-774.check"
        "tests/ParserTests/regressions/issue-774.expr"
        "tests/ParserTests/regressions/issue-774.format"
        "tests/ParserTests/regressions/jaeger-flamegraph.cabal"
        "tests/ParserTests/regressions/jaeger-flamegraph.expr"
        "tests/ParserTests/regressions/jaeger-flamegraph.format"
        "tests/ParserTests/regressions/leading-comma-2.cabal"
        "tests/ParserTests/regressions/leading-comma-2.expr"
        "tests/ParserTests/regressions/leading-comma-2.format"
        "tests/ParserTests/regressions/leading-comma.cabal"
        "tests/ParserTests/regressions/leading-comma.expr"
        "tests/ParserTests/regressions/leading-comma.format"
        "tests/ParserTests/regressions/libpq1.cabal"
        "tests/ParserTests/regressions/libpq1.expr"
        "tests/ParserTests/regressions/libpq1.format"
        "tests/ParserTests/regressions/libpq2.cabal"
        "tests/ParserTests/regressions/libpq2.expr"
        "tests/ParserTests/regressions/libpq2.format"
        "tests/ParserTests/regressions/mixin-1.cabal"
        "tests/ParserTests/regressions/mixin-1.expr"
        "tests/ParserTests/regressions/mixin-1.format"
        "tests/ParserTests/regressions/mixin-2.cabal"
        "tests/ParserTests/regressions/mixin-2.expr"
        "tests/ParserTests/regressions/mixin-2.format"
        "tests/ParserTests/regressions/mixin-3.cabal"
        "tests/ParserTests/regressions/mixin-3.expr"
        "tests/ParserTests/regressions/mixin-3.format"
        "tests/ParserTests/regressions/monad-param.cabal"
        "tests/ParserTests/regressions/monad-param.expr"
        "tests/ParserTests/regressions/monad-param.format"
        "tests/ParserTests/regressions/multiple-libs-2.cabal"
        "tests/ParserTests/regressions/multiple-libs-2.check"
        "tests/ParserTests/regressions/multiple-libs-2.expr"
        "tests/ParserTests/regressions/multiple-libs-2.format"
        "tests/ParserTests/regressions/noVersion.cabal"
        "tests/ParserTests/regressions/noVersion.expr"
        "tests/ParserTests/regressions/noVersion.format"
        "tests/ParserTests/regressions/nothing-unicode.cabal"
        "tests/ParserTests/regressions/nothing-unicode.check"
        "tests/ParserTests/regressions/nothing-unicode.expr"
        "tests/ParserTests/regressions/nothing-unicode.format"
        "tests/ParserTests/regressions/pre-1.6-glob.cabal"
        "tests/ParserTests/regressions/pre-1.6-glob.check"
        "tests/ParserTests/regressions/pre-2.4-globstar.cabal"
        "tests/ParserTests/regressions/pre-2.4-globstar.check"
        "tests/ParserTests/regressions/public-multilib-1.cabal"
        "tests/ParserTests/regressions/public-multilib-1.check"
        "tests/ParserTests/regressions/public-multilib-2.cabal"
        "tests/ParserTests/regressions/public-multilib-2.check"
        "tests/ParserTests/regressions/shake.cabal"
        "tests/ParserTests/regressions/shake.expr"
        "tests/ParserTests/regressions/shake.format"
        "tests/ParserTests/regressions/spdx-1.cabal"
        "tests/ParserTests/regressions/spdx-1.expr"
        "tests/ParserTests/regressions/spdx-1.format"
        "tests/ParserTests/regressions/spdx-2.cabal"
        "tests/ParserTests/regressions/spdx-2.expr"
        "tests/ParserTests/regressions/spdx-2.format"
        "tests/ParserTests/regressions/spdx-3.cabal"
        "tests/ParserTests/regressions/spdx-3.expr"
        "tests/ParserTests/regressions/spdx-3.format"
        "tests/ParserTests/regressions/th-lift-instances.cabal"
        "tests/ParserTests/regressions/th-lift-instances.expr"
        "tests/ParserTests/regressions/th-lift-instances.format"
        "tests/ParserTests/regressions/version-sets.cabal"
        "tests/ParserTests/regressions/version-sets.expr"
        "tests/ParserTests/regressions/version-sets.format"
        "tests/ParserTests/regressions/wl-pprint-indef.cabal"
        "tests/ParserTests/regressions/wl-pprint-indef.expr"
        "tests/ParserTests/regressions/wl-pprint-indef.format"
        "tests/ParserTests/warnings/bom.cabal"
        "tests/ParserTests/warnings/bool.cabal"
        "tests/ParserTests/warnings/deprecatedfield.cabal"
        "tests/ParserTests/warnings/doubledash.cabal"
        "tests/ParserTests/warnings/extratestmodule.cabal"
        "tests/ParserTests/warnings/gluedop.cabal"
        "tests/ParserTests/warnings/multiplesingular.cabal"
        "tests/ParserTests/warnings/nbsp.cabal"
        "tests/ParserTests/warnings/newsyntax.cabal"
        "tests/ParserTests/warnings/oldsyntax.cabal"
        "tests/ParserTests/warnings/operator.cabal"
        "tests/ParserTests/warnings/specversion-a.cabal"
        "tests/ParserTests/warnings/specversion-b.cabal"
        "tests/ParserTests/warnings/specversion-c.cabal"
        "tests/ParserTests/warnings/subsection.cabal"
        "tests/ParserTests/warnings/tab.cabal"
        "tests/ParserTests/warnings/trailingfield.cabal"
        "tests/ParserTests/warnings/unknownfield.cabal"
        "tests/ParserTests/warnings/unknownsection.cabal"
        "tests/ParserTests/warnings/utf8.cabal"
        "tests/ParserTests/warnings/versiontag.cabal"
        "tests/ParserTests/warnings/wildcard.cabal"
        "tests/cbits/rpmvercmp.c"
        "tests/hackage/check.sh"
        "tests/hackage/download.sh"
        "tests/hackage/unpack.sh"
        "tests/misc/ghc-supported-languages.hs"
        ];
      extraTmpFiles = [];
      extraDocFiles = [];
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ] ++ [
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ]) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ])) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ]) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (errorHandler.buildDepError "void"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.8")) (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
        buildable = true;
        modules = [
          "Distribution/Backpack/PreExistingComponent"
          "Distribution/Backpack/ReadyComponent"
          "Distribution/Backpack/MixLink"
          "Distribution/Backpack/ModuleScope"
          "Distribution/Backpack/UnifyM"
          "Distribution/Backpack/Id"
          "Distribution/Utils/UnionFind"
          "Distribution/Utils/Base62"
          "Distribution/Compat/Async"
          "Distribution/Compat/CopyFile"
          "Distribution/Compat/GetShortPathName"
          "Distribution/Compat/MonadFail"
          "Distribution/Compat/Prelude"
          "Distribution/Compat/SnocList"
          "Distribution/GetOpt"
          "Distribution/Lex"
          "Distribution/Utils/String"
          "Distribution/Simple/Build/Macros/Z"
          "Distribution/Simple/GHC/EnvironmentParser"
          "Distribution/Simple/GHC/Internal"
          "Distribution/Simple/GHC/ImplInfo"
          "Distribution/Simple/Utils/Json"
          "Distribution/ZinzaPrelude"
          "Paths_Cabal"
          "Distribution/Backpack"
          "Distribution/Backpack/Configure"
          "Distribution/Backpack/ComponentsGraph"
          "Distribution/Backpack/ConfiguredComponent"
          "Distribution/Backpack/DescribeUnitId"
          "Distribution/Backpack/FullUnitId"
          "Distribution/Backpack/LinkedComponent"
          "Distribution/Backpack/ModSubst"
          "Distribution/Backpack/ModuleShape"
          "Distribution/Backpack/PreModuleShape"
          "Distribution/CabalSpecVersion"
          "Distribution/Utils/IOData"
          "Distribution/Utils/LogProgress"
          "Distribution/Utils/MapAccum"
          "Distribution/Utils/MD5"
          "Distribution/Utils/Structured"
          "Distribution/Compat/CreatePipe"
          "Distribution/Compat/Directory"
          "Distribution/Compat/Environment"
          "Distribution/Compat/Exception"
          "Distribution/Compat/FilePath"
          "Distribution/Compat/Graph"
          "Distribution/Compat/Internal/TempFile"
          "Distribution/Compat/Newtype"
          "Distribution/Compat/NonEmptySet"
          "Distribution/Compat/ResponseFile"
          "Distribution/Compat/Prelude/Internal"
          "Distribution/Compat/Process"
          "Distribution/Compat/Semigroup"
          "Distribution/Compat/Stack"
          "Distribution/Compat/Time"
          "Distribution/Compat/Typeable"
          "Distribution/Compat/DList"
          "Distribution/Compiler"
          "Distribution/InstalledPackageInfo"
          "Distribution/Types/AbiDependency"
          "Distribution/Types/ExposedModule"
          "Distribution/Types/InstalledPackageInfo"
          "Distribution/Types/InstalledPackageInfo/FieldGrammar"
          "Distribution/License"
          "Distribution/Make"
          "Distribution/ModuleName"
          "Distribution/Package"
          "Distribution/PackageDescription"
          "Distribution/PackageDescription/Check"
          "Distribution/PackageDescription/Configuration"
          "Distribution/PackageDescription/PrettyPrint"
          "Distribution/PackageDescription/Utils"
          "Distribution/ReadE"
          "Distribution/Simple"
          "Distribution/Simple/Bench"
          "Distribution/Simple/Build"
          "Distribution/Simple/Build/Macros"
          "Distribution/Simple/Build/PathsModule"
          "Distribution/Simple/BuildPaths"
          "Distribution/Simple/BuildTarget"
          "Distribution/Simple/BuildToolDepends"
          "Distribution/Simple/CCompiler"
          "Distribution/Simple/Command"
          "Distribution/Simple/Compiler"
          "Distribution/Simple/Configure"
          "Distribution/Simple/Flag"
          "Distribution/Simple/GHC"
          "Distribution/Simple/GHCJS"
          "Distribution/Simple/Haddock"
          "Distribution/Simple/Doctest"
          "Distribution/Simple/Glob"
          "Distribution/Simple/HaskellSuite"
          "Distribution/Simple/Hpc"
          "Distribution/Simple/Install"
          "Distribution/Simple/InstallDirs"
          "Distribution/Simple/InstallDirs/Internal"
          "Distribution/Simple/LocalBuildInfo"
          "Distribution/Simple/PackageIndex"
          "Distribution/Simple/PreProcess"
          "Distribution/Simple/PreProcess/Unlit"
          "Distribution/Simple/Program"
          "Distribution/Simple/Program/Ar"
          "Distribution/Simple/Program/Builtin"
          "Distribution/Simple/Program/Db"
          "Distribution/Simple/Program/Find"
          "Distribution/Simple/Program/GHC"
          "Distribution/Simple/Program/HcPkg"
          "Distribution/Simple/Program/Hpc"
          "Distribution/Simple/Program/Internal"
          "Distribution/Simple/Program/Ld"
          "Distribution/Simple/Program/ResponseFile"
          "Distribution/Simple/Program/Run"
          "Distribution/Simple/Program/Script"
          "Distribution/Simple/Program/Strip"
          "Distribution/Simple/Program/Types"
          "Distribution/Simple/Register"
          "Distribution/Simple/Setup"
          "Distribution/Simple/ShowBuildInfo"
          "Distribution/Simple/SrcDist"
          "Distribution/Simple/Test"
          "Distribution/Simple/Test/ExeV10"
          "Distribution/Simple/Test/LibV09"
          "Distribution/Simple/Test/Log"
          "Distribution/Simple/UHC"
          "Distribution/Simple/UserHooks"
          "Distribution/Simple/Utils"
          "Distribution/SPDX"
          "Distribution/SPDX/License"
          "Distribution/SPDX/LicenseId"
          "Distribution/SPDX/LicenseExceptionId"
          "Distribution/SPDX/LicenseExpression"
          "Distribution/SPDX/LicenseListVersion"
          "Distribution/SPDX/LicenseReference"
          "Distribution/System"
          "Distribution/TestSuite"
          "Distribution/Text"
          "Distribution/Pretty"
          "Distribution/Types/AbiHash"
          "Distribution/Types/AnnotatedId"
          "Distribution/Types/Benchmark"
          "Distribution/Types/BenchmarkInterface"
          "Distribution/Types/BenchmarkType"
          "Distribution/Types/BuildInfo"
          "Distribution/Types/BuildType"
          "Distribution/Types/ComponentInclude"
          "Distribution/Types/ConfVar"
          "Distribution/Types/Dependency"
          "Distribution/Types/ExeDependency"
          "Distribution/Types/LegacyExeDependency"
          "Distribution/Types/PkgconfigDependency"
          "Distribution/Types/DependencyMap"
          "Distribution/Types/ComponentId"
          "Distribution/Types/MungedPackageId"
          "Distribution/Types/PackageId"
          "Distribution/Types/UnitId"
          "Distribution/Types/Executable"
          "Distribution/Types/ExecutableScope"
          "Distribution/Types/Library"
          "Distribution/Types/LibraryVisibility"
          "Distribution/Types/Flag"
          "Distribution/Types/ForeignLib"
          "Distribution/Types/ForeignLibType"
          "Distribution/Types/ForeignLibOption"
          "Distribution/Types/Module"
          "Distribution/Types/ModuleReexport"
          "Distribution/Types/ModuleRenaming"
          "Distribution/Types/ComponentName"
          "Distribution/Types/LibraryName"
          "Distribution/Types/MungedPackageName"
          "Distribution/Types/PackageName"
          "Distribution/Types/PackageName/Magic"
          "Distribution/Types/PkgconfigName"
          "Distribution/Types/PkgconfigVersion"
          "Distribution/Types/PkgconfigVersionRange"
          "Distribution/Types/UnqualComponentName"
          "Distribution/Types/IncludeRenaming"
          "Distribution/Types/Mixin"
          "Distribution/Types/SetupBuildInfo"
          "Distribution/Types/TestSuite"
          "Distribution/Types/TestSuiteInterface"
          "Distribution/Types/TestType"
          "Distribution/Types/GenericPackageDescription"
          "Distribution/Types/Condition"
          "Distribution/Types/CondTree"
          "Distribution/Types/HookedBuildInfo"
          "Distribution/Types/PackageDescription"
          "Distribution/Types/SourceRepo"
          "Distribution/Types/Component"
          "Distribution/Types/ComponentLocalBuildInfo"
          "Distribution/Types/LocalBuildInfo"
          "Distribution/Types/ComponentRequestedSpec"
          "Distribution/Types/TargetInfo"
          "Distribution/Types/Version"
          "Distribution/Types/VersionRange"
          "Distribution/Types/VersionRange/Internal"
          "Distribution/Types/VersionInterval"
          "Distribution/Types/GivenComponent"
          "Distribution/Types/PackageVersionConstraint"
          "Distribution/Utils/Generic"
          "Distribution/Utils/NubList"
          "Distribution/Utils/ShortText"
          "Distribution/Utils/Progress"
          "Distribution/Verbosity"
          "Distribution/Verbosity/Internal"
          "Distribution/Version"
          "Language/Haskell/Extension"
          "Distribution/Compat/Binary"
          "Distribution/Compat/Parsing"
          "Distribution/Compat/CharParsing"
          "Distribution/FieldGrammar"
          "Distribution/FieldGrammar/Class"
          "Distribution/FieldGrammar/FieldDescrs"
          "Distribution/FieldGrammar/Newtypes"
          "Distribution/FieldGrammar/Parsec"
          "Distribution/FieldGrammar/Pretty"
          "Distribution/PackageDescription/FieldGrammar"
          "Distribution/PackageDescription/Parsec"
          "Distribution/PackageDescription/Quirks"
          "Distribution/Parsec"
          "Distribution/Parsec/Error"
          "Distribution/Parsec/Position"
          "Distribution/Parsec/Warning"
          "Distribution/Parsec/FieldLineStream"
          "Distribution/Fields"
          "Distribution/Fields/ConfVar"
          "Distribution/Fields/Field"
          "Distribution/Fields/Lexer"
          "Distribution/Fields/LexerMonad"
          "Distribution/Fields/ParseResult"
          "Distribution/Fields/Parser"
          "Distribution/Fields/Pretty"
          "Distribution/Compat/Lens"
          "Distribution/Types/Lens"
          "Distribution/Types/Benchmark/Lens"
          "Distribution/Types/BuildInfo/Lens"
          "Distribution/Types/Executable/Lens"
          "Distribution/Types/ForeignLib/Lens"
          "Distribution/Types/GenericPackageDescription/Lens"
          "Distribution/Types/InstalledPackageInfo/Lens"
          "Distribution/Types/Library/Lens"
          "Distribution/Types/PackageDescription/Lens"
          "Distribution/Types/PackageId/Lens"
          "Distribution/Types/SetupBuildInfo/Lens"
          "Distribution/Types/SourceRepo/Lens"
          "Distribution/Types/TestSuite/Lens"
          ] ++ (pkgs.lib).optionals (flags.bundled-binary-generic) [
          "Distribution/Compat/Binary/Class"
          "Distribution/Compat/Binary/Generic"
          ];
        };
      tests = {
        "unit-tests" = {
          depends = ([
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."rere" or (errorHandler.buildDepError "rere"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (errorHandler.buildDepError "void"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          modules = [
            "Test/Laws"
            "Test/QuickCheck/Utils"
            "UnitTests/Distribution/CabalSpecVersion"
            "UnitTests/Distribution/Compat/CreatePipe"
            "UnitTests/Distribution/Compat/Graph"
            "UnitTests/Distribution/Compat/Time"
            "UnitTests/Distribution/Described"
            "UnitTests/Distribution/Simple/Glob"
            "UnitTests/Distribution/Simple/Program/GHC"
            "UnitTests/Distribution/Simple/Program/Internal"
            "UnitTests/Distribution/Simple/Utils"
            "UnitTests/Distribution/SPDX"
            "UnitTests/Distribution/System"
            "UnitTests/Distribution/Types/GenericPackageDescription"
            "UnitTests/Distribution/Utils/CharSet"
            "UnitTests/Distribution/Utils/Generic"
            "UnitTests/Distribution/Utils/NubList"
            "UnitTests/Distribution/Utils/ShortText"
            "UnitTests/Distribution/Utils/Structured"
            "UnitTests/Distribution/Version"
            "UnitTests/Distribution/PkgconfigVersion"
            "UnitTests/Orphans"
            "Test/QuickCheck/GenericArbitrary"
            "Test/QuickCheck/Instances/Cabal"
            "Distribution/Described"
            "Distribution/Utils/CharSet"
            "Distribution/Utils/GrammarRegex"
            ];
          hsSourceDirs = [
            "tests"
            "Cabal-QuickCheck/src"
            "Cabal-described/src"
            ];
          mainPath = [ "UnitTests.hs" ];
          };
        "parser-tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8") (hsPkgs."tree-diff" or (errorHandler.buildDepError "tree-diff"));
          buildable = true;
          modules = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.8") [
            "Data/TreeDiff/Instances/Cabal"
            "Data/TreeDiff/Instances/CabalLanguage"
            "Data/TreeDiff/Instances/CabalSPDX"
            "Data/TreeDiff/Instances/CabalVersion"
            ];
          hsSourceDirs = [
            "tests"
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8") "Cabal-tree-diff/src";
          mainPath = [ "ParserTests.hs" ];
          };
        "check-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          hsSourceDirs = [ "tests" ];
          mainPath = [ "CheckTests.hs" ];
          };
        "custom-setup-tests" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          modules = [ "CabalDoctestSetup" "IdrisSetup" ];
          hsSourceDirs = [ "tests/custom-setup" ];
          mainPath = [ "CustomSetupTests.hs" ];
          };
        "hackage-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8") (hsPkgs."tree-diff" or (errorHandler.buildDepError "tree-diff"));
          buildable = if system.isWindows then false else true;
          modules = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.8") [
            "Data/TreeDiff/Instances/Cabal"
            "Data/TreeDiff/Instances/CabalLanguage"
            "Data/TreeDiff/Instances/CabalSPDX"
            "Data/TreeDiff/Instances/CabalVersion"
            ];
          hsSourceDirs = [
            "tests"
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8") "Cabal-tree-diff/src";
          mainPath = [ "HackageTests.hs" ];
          };
        "rpmvercmp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          cSources = [ "tests/cbits/rpmvercmp.c" ];
          hsSourceDirs = [ "tests" ];
          mainPath = [ "RPMVerCmp.hs" ];
          };
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../Cabal; }