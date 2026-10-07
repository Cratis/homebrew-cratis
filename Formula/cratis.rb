class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.30.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.30.1/cratis-3.30.1-osx-arm64.tar.gz"
      sha256 "e827d9d5b7fefe3ba2ab4fb344767717dd61981d1565dd326d6bfe8d27c731a2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.30.1/cratis-3.30.1-osx-x64.tar.gz"
      sha256 "f1dd753d17d745f43def8bd987a94b02fa582541401aac2bc1d0ae3893f8e97d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.30.1/cratis-3.30.1-linux-arm64.tar.gz"
      sha256 "60d6280a4c7f49a806cf220945d9f5392dc6b4e2d078e9395a29c61464278ca6"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.30.1/cratis-3.30.1-linux-x64.tar.gz"
      sha256 "d30d7272f01d30a63f2efdb2463211ca0a38b77da895c6558e6afc73eba68a29"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
