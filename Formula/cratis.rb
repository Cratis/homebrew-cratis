class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.28.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.3/cratis-3.28.3-osx-arm64.tar.gz"
      sha256 "6cc9257ead24f554642ab806fc6bc4422c96b3b46aadfbf81f7d8dbfedf2bb98"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.3/cratis-3.28.3-osx-x64.tar.gz"
      sha256 "6480108d5e8b09bfb715f1350c77769a39aa8a0b025a663cdffd71007790f536"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.3/cratis-3.28.3-linux-arm64.tar.gz"
      sha256 "9adc7597c83003ab09ecedbed8ac4bc39418e33008500020a9c137115f0e8643"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.3/cratis-3.28.3-linux-x64.tar.gz"
      sha256 "87ab1578eb8b718c29d01d25acfdc9a9b36d237bbfa50b9bf93e8a906c5a2b38"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
