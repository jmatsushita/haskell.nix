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
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "cabal-testsuite"; version = "3"; };
      license = "BSD-3-Clause";
      copyright = "2003-2020, Cabal Development Team (see AUTHORS file)";
      maintainer = "cabal-devel@haskell.org";
      author = "Cabal Development Team <cabal-devel@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "Test suite for Cabal and cabal-install";
      description = "This package defines a shared test suite for Cabal and cabal-install.";
      buildType = "Custom";
      isLocal = true;
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        ];
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [ "README.md" ];
      extraTmpFiles = [];
      extraDocFiles = [];
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-compat-tdfa" or (errorHandler.buildDepError "regex-compat-tdfa"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (if !system.isWindows
          then [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]
          else [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]);
        buildable = true;
        modules = [
          "Test/Cabal/ScriptEnv0"
          "Test/Cabal/CheckArMetadata"
          "Test/Cabal/Monad"
          "Test/Cabal/OutputNormalizer"
          "Test/Cabal/Plan"
          "Test/Cabal/Prelude"
          "Test/Cabal/Run"
          "Test/Cabal/Script"
          "Test/Cabal/Server"
          "Test/Cabal/Workdir"
          ];
        hsSourceDirs = [ "src" ];
        };
      exes = {
        "cabal-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-testsuite" or (errorHandler.buildDepError "cabal-testsuite"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.cabal-testsuite.components.exes.setup or (pkgs.buildPackages.setup or (errorHandler.buildToolDepError "cabal-testsuite:setup")))
            ];
          buildable = true;
          hsSourceDirs = [ "main" ];
          mainPath = [ "cabal-tests.hs" ];
          };
        "setup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ];
          buildable = true;
          mainPath = [ "Setup.simple.hs" ];
          };
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../cabal-testsuite; }