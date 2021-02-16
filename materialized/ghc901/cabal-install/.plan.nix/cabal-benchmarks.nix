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
      identifier = { name = "cabal-benchmarks"; version = "3"; };
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
      tests = {
        "cabal-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          hsSourceDirs = [ "bench" ];
          mainPath = [ "CabalBenchmarks.hs" ];
          };
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../cabal-benchmarks; }