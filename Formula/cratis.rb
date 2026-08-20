class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.10.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.10.1/cratis-2.10.1-osx-arm64.tar.gz"
      sha256 "3000ad5a92a9c545023e8635f0b3c72133951db672124831203d0982aa977a11"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.10.1/cratis-2.10.1-osx-x64.tar.gz"
      sha256 "b47fe7e442996f2791c4f78ed7de47784479db619811a11dd5c0ad6319cb8fa4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.10.1/cratis-2.10.1-linux-arm64.tar.gz"
      sha256 "567f92d62ed7bb239056ac6eee8ed5716fd72d3522d604aa7435fe225f047a93"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.10.1/cratis-2.10.1-linux-x64.tar.gz"
      sha256 "dceaee566e5f91cb1f0e1274993164cc478cd0a7f601c7371300774c65c2df37"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
