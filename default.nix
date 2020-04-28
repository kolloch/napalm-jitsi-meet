{ nixpkgs ? <nixpkgs>
, pkgs ? import nixpkgs {}
, sources ? import ./nix/sources.nix
, napalmSrc ? sources.napalm
, napalm ? pkgs.callPackage napalmSrc {}
, jitsiMeetSrc ? sources.jitsi-meet
}:

napalm.buildPackage jitsiMeetSrc {}