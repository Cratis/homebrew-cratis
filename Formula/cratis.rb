class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.96.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.96.0/cratis-3.96.0-osx-arm64.tar.gz"
      sha256 "d2d5549d9e6d703aad0927c084d0c65e281293d2fd3ffd2a9dfa1dd0a65f16cd"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.96.0/cratis-3.96.0-osx-x64.tar.gz"
      sha256 "ba40fa3d9381e940e6e02f84b7c0430ff735a48c9df7ad5276d9346d51b70eaa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.96.0/cratis-3.96.0-linux-arm64.tar.gz"
      sha256 "d6d835dd7bb7c40118646fcb45402eb59a78a714f311b8db7bce763333df6d42"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.96.0/cratis-3.96.0-linux-x64.tar.gz"
      sha256 "1a21bedf09bb1878f3e29d064ef8f6d91b4b15cd2d259b4a8b555f105a9dc285"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
