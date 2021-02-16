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
      identifier = { name = "Cabal-tree-diff"; version = "3.4.0.0"; };
      license = "NONE";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "QuickCheck instances for types in Cabal";
      description = "Provides tree-diff ToExpr instances for some types in Cabal";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [];
      extraTmpFiles = [];
      extraDocFiles = [];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."tree-diff" or (errorHandler.buildDepError "tree-diff"))
          ];
        buildable = true;
        modules = [
          "Data/TreeDiff/Instances/CabalLanguage"
          "Data/TreeDiff/Instances/CabalSPDX"
          "Data/TreeDiff/Instances/CabalVersion"
          "Data/TreeDiff/Instances/Cabal"
          ];
        hsSourceDirs = [ "src" ];
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../Cabal/Cabal-tree-diff; }