class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.15.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.15.2/cratis-2.15.2-osx-arm64.tar.gz"
      sha256 "a47feb7a485cd1245feac1f434fdadd5e53d63de307a01fd584897864e99d481"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.15.2/cratis-2.15.2-osx-x64.tar.gz"
      sha256 "17858ccb794e2c859c6e87d114958d4eadf0c8fec041220fcb9f1b0d2cc06008"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.15.2/cratis-2.15.2-linux-arm64.tar.gz"
      sha256 "0100ad97af6587cae6d9183d27bfa56f292d990bac181e2c38aca2d62526bb43"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.15.2/cratis-2.15.2-linux-x64.tar.gz"
      sha256 "797bac670a622bf8a85f7552e8ef5b193e4a50276f3c8b95d7b3c07e96e5e09f"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
