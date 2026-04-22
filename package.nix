{pkgs}:
pkgs.buildGoModule rec {
  pname = "bootdev";
  version = "1.29.2";

  src = pkgs.fetchFromGitHub {
    owner = "bootdotdev";
    repo = "bootdev";
    rev = "v${version}";
    hash = "sha256-POOxwveDSQ3hiybFKmI2eQQEbxN45ubmfEUkLk7i/ng=";
  };

  vendorHash = "sha256-ZDioEU5uPCkd+kC83cLlpgzyOsnpj2S7N+lQgsQb8uY=";

  meta = {
    description = "A CLI used to complete coding challenges and lessons on Boot.dev ";
    mainProgram = "bootdev";
  };
}
