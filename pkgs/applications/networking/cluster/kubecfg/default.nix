{ lib, buildGoPackage, fetchFromGitHub, ... }:

let version = "0.21.0"; in

buildGoPackage {
  pname = "kubecfg";
  inherit version;

  src = fetchFromGitHub {
    owner = "bitnami";
    repo = "kubecfg";
    rev = "v${version}";
    sha256 = "sha256-Wu7+Xmb7ha3OG37DzLg2+/Sr9hB5oD3OIkC9h9Fa4QA=";
  };

  goPackagePath = "github.com/bitnami/kubecfg";

  ldflags = [ "-s" "-w" "-X main.version=v${version}" ];

  meta = {
    description = "A tool for managing Kubernetes resources as code";
    homepage = "https://github.com/bitnami/kubecfg";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ benley ];
    platforms = lib.platforms.unix;
  };
}
