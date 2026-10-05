class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.27.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.27.1/cratis-3.27.1-osx-arm64.tar.gz"
      sha256 "d486da308503346508b298ff57f96e601f28bafdf1af609cb36236a7da2e1f01"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.27.1/cratis-3.27.1-osx-x64.tar.gz"
      sha256 "472592cca152c487cf32eea4d4091c820355ba4e69bf38ee12bcf59424ad4702"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.27.1/cratis-3.27.1-linux-arm64.tar.gz"
      sha256 "7314638780f70e67845c80986572bf166659f2622a77ca1cd8f6ccb68f0693ae"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.27.1/cratis-3.27.1-linux-x64.tar.gz"
      sha256 "f60a6ea6665d6a1eb1b04b3d90ee5cd0594c74211da8711a8d15e3e8a5c0cad3"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
