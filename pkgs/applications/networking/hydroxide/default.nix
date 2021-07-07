{ lib, buildGoModule, fetchFromGitHub, fetchpatch }:

buildGoModule rec {
  pname = "hydroxide";
  version = "0.2.19";

  src = fetchFromGitHub {
    owner = "zkjanus";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-VTUpiuSsI795XDSxJJvLQlVNPLiekHyKcCazRBky9nU=";
  };

  vendorSha256 = "sha256-g3p8EDsDk5niODYZv5QWVoOKnzmcWqARJjFgN9oqn/s=";

  doCheck = false;

  runVend = false;

  patches = [
    ./utf8.patch
  ];

  subPackages = [ "cmd/hydroxide" ];

  meta = with lib; {
    description = "A third-party, open-source ProtonMail bridge";
    homepage = "https://github.com/emersion/hydroxide";
    license = licenses.mit;
    maintainers = with maintainers; [ Br1ght0ne ];
    platforms = platforms.unix;
  };
}
