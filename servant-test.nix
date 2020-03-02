{ mkDerivation, aeson, base, http-types, mtl, servant
, servant-lucid, servant-server, stdenv, text
}:
mkDerivation {
  pname = "servant-test";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base http-types mtl servant servant-lucid servant-server text
  ];
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
