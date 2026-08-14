class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.6.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.6.2/cratis-2.6.2-osx-arm64.tar.gz"
      sha256 "bd0d7ea96f0085cda7481b64ee3d4036687b210996450d51e3ed8ba1d1021e29"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.6.2/cratis-2.6.2-osx-x64.tar.gz"
      sha256 "31e59f9144df63ec40b9ece701b2e8fff8597edf7a9b2b8be8630e74b3f76af8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.6.2/cratis-2.6.2-linux-arm64.tar.gz"
      sha256 "4433c535f788f823110b30cad7b7ebf5e3d512f570eb893d5413c0dd79b5030e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.6.2/cratis-2.6.2-linux-x64.tar.gz"
      sha256 "474f1ce5d724e86345bf06e50981ba0dc317ac05b3add924a29ce5fba8402b95"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
