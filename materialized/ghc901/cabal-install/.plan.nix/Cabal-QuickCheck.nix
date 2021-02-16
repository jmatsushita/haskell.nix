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
      identifier = { name = "Cabal-QuickCheck"; version = "3.4.0.0"; };
      license = "NONE";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "QuickCheck instances for types in Cabal";
      description = "Provides QuickCheck Arbitrary instances for some types in Cabal";
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
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        modules = [
          "Test/QuickCheck/GenericArbitrary"
          "Test/QuickCheck/Instances/Cabal"
          ];
        hsSourceDirs = [ "src" ];
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../Cabal/Cabal-QuickCheck; }