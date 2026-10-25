class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.98.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.98.0/cratis-3.98.0-osx-arm64.tar.gz"
      sha256 "ab0ca6427c154d4a3700301a53be9f640f4df9f11342997a2930a10923e42edd"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.98.0/cratis-3.98.0-osx-x64.tar.gz"
      sha256 "bc413120bd23470218a949491406cafbe9359b22816f6ee8b5318ecaf6cfdf1a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.98.0/cratis-3.98.0-linux-arm64.tar.gz"
      sha256 "97287b5d3d0065ac9bab22ff8838e367f0547441e9faa23d62791f913c22ff0d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.98.0/cratis-3.98.0-linux-x64.tar.gz"
      sha256 "e5446a3e7c059b82a8857eb6466e2f30ebc10fec98abde19290cc99c26a37d78"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
