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
      identifier = { name = "Cabal-described"; version = "3.4.0.0"; };
      license = "NONE";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Described functionality for types in Cabal";
      description = "Provides rere bindings";
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
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."rere" or (errorHandler.buildDepError "rere"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        modules = [
          "Distribution/Described"
          "Distribution/Utils/CharSet"
          "Distribution/Utils/GrammarRegex"
          ];
        hsSourceDirs = [ "src" ];
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../Cabal/Cabal-described; }