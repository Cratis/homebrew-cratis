class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.77.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.77.1/cratis-3.77.1-osx-arm64.tar.gz"
      sha256 "08d37a620bf3a3b507baa4f631f23ed3126cc97068ecb38eb60744d0867816ea"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.77.1/cratis-3.77.1-osx-x64.tar.gz"
      sha256 "ebcd528a0ad15dd8511096509a6882f152a274994a9ce3542a6f70981d30b542"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.77.1/cratis-3.77.1-linux-arm64.tar.gz"
      sha256 "3f0afc03d51e0efb5f81fdfab50d2cdc8d8b5a66e76133cb84e0394115951fd3"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.77.1/cratis-3.77.1-linux-x64.tar.gz"
      sha256 "5f201c4693878d9065896c57f94f5d423c8e9321f0bf48bc7e3821a6cb8f7e57"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
