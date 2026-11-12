class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.132.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.132.0/cratis-3.132.0-osx-arm64.tar.gz"
      sha256 "eda18a211937abbaf6733e6c00a9abae642ea6308c7e0943408ce6c6406f8e3d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.132.0/cratis-3.132.0-osx-x64.tar.gz"
      sha256 "51abfdb87737a7c70dc60da47762c44dd14c50f04da7ca2f5d9e39abf132bcb4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.132.0/cratis-3.132.0-linux-arm64.tar.gz"
      sha256 "3a5bf51b01e3a998f4f7e955fd26ed57de6c0b946eac5080c5b9a9d78c461fc3"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.132.0/cratis-3.132.0-linux-x64.tar.gz"
      sha256 "d2e3c241e6b34bd56f1aa3e547bac06b2bde4c063da05d086df656b9f143a15e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
