{pkgs}:
pkgs.buildGoModule rec {
  pname = "bootdev";
  version = "1.29.3";

  src = pkgs.fetchFromGitHub {
    owner = "bootdotdev";
    repo = "bootdev";
    rev = "v${version}";
    hash = "sha256-6fdzSwCtJG8SFqInVsOc5EO4g9esMU/z9MYtou1ylFI=";
  };

  vendorHash = "sha256-ZDioEU5uPCkd+kC83cLlpgzyOsnpj2S7N+lQgsQb8uY=";

  meta = {
    description = "A CLI used to complete coding challenges and lessons on Boot.dev ";
    mainProgram = "bootdev";
  };
}
