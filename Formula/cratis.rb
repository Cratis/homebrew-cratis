class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.5.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.5.0/cratis-2.5.0-osx-arm64.tar.gz"
      sha256 "14c642d88da0d479ae55b2d17c316be4d017d8df61be648a9003551ce7695988"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.5.0/cratis-2.5.0-osx-x64.tar.gz"
      sha256 "2d3121f6309b269d4c8b6525196276c53952d8ebaf097c273a96a537c864e26f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.5.0/cratis-2.5.0-linux-arm64.tar.gz"
      sha256 "5a8e091da42e86a54397a3829b52ca91a3c1f665610bf4d0bbe6bb5f440e13e2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.5.0/cratis-2.5.0-linux-x64.tar.gz"
      sha256 "00d56dfc7e188d136dfa55da96c56253523cdce9b2baac3dcbb515cc98f6973a"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
