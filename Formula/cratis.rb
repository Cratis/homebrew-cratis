class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.24.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.24.1/cratis-3.24.1-osx-arm64.tar.gz"
      sha256 "0951ce666ea5f7094c7f4980b4f3cc63096bb126a17136b3bfdbcabcc1a44dc4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.24.1/cratis-3.24.1-osx-x64.tar.gz"
      sha256 "d0965f5711bdcdf3061dc58cf4b7778f0bd0791cc617f547eb875d5417cd6c14"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.24.1/cratis-3.24.1-linux-arm64.tar.gz"
      sha256 "6939beeb731279838711634f6a77dd5537a4b495b78c58741978490816d2dc91"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.24.1/cratis-3.24.1-linux-x64.tar.gz"
      sha256 "265b20a2692f34911f6f51954be2e5c76df9750e18907afcfa38ac37233be343"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
