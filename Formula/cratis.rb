class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.47.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.47.0/cratis-3.47.0-osx-arm64.tar.gz"
      sha256 "24772c90957051defbd02e9d0b92ca3f84f90665bd062dfa4bfec1ac0ac354d0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.47.0/cratis-3.47.0-osx-x64.tar.gz"
      sha256 "97f86a298470fdc3cb401656b0dad8393b360748101e398ed65e69199f4293bf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.47.0/cratis-3.47.0-linux-arm64.tar.gz"
      sha256 "8d6f41ce07b506c00e2e64d8dc23a79b9a0411c3339ae5c4e771c821d8437dfc"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.47.0/cratis-3.47.0-linux-x64.tar.gz"
      sha256 "68909c362c8e3ed8116698136124b09be753b15e69334b36b5a544b4629ed68a"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
