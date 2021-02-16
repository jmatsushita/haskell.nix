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
      specVersion = "1.10";
      identifier = { name = "solver-benchmarks"; version = "3"; };
      license = "BSD-3-Clause";
      copyright = "2003-2020, Cabal Development Team (see AUTHORS file)";
      maintainer = "cabal-devel@haskell.org";
      author = "Cabal Development Team <cabal-devel@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "Benchmarks for the cabal dependency solver";
      description = "This package contains benchmarks that test cabal's dependency solver by running the cabal executable.";
      buildType = "Simple";
      isLocal = true;
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
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        modules = [ "HackageBenchmark" ];
        };
      exes = {
        "hackage-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."solver-benchmarks" or (errorHandler.buildDepError "solver-benchmarks"))
            ];
          buildable = true;
          hsSourceDirs = [ "main" ];
          mainPath = [ "hackage-benchmark.hs" ];
          };
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."solver-benchmarks" or (errorHandler.buildDepError "solver-benchmarks"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          hsSourceDirs = [ "tests" ];
          mainPath = [ "HackageBenchmarkTest.hs" ];
          };
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../solver-benchmarks; }