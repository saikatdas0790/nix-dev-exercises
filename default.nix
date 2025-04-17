let
  pkgs = import <nixpkgs> { };
in
rec {
  hello = pkgs.callPackage ./hello.nix { audience = "Rustaceans"; };
  hello-folks = hello.override {
    audience = "folks";
  };
}
