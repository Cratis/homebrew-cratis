class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.46.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.46.0/cratis-3.46.0-osx-arm64.tar.gz"
      sha256 "29385b7d384f6c60bbcce7f0c910714c09199d124e15f4ca8ec3fc4fe06c16b1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.46.0/cratis-3.46.0-osx-x64.tar.gz"
      sha256 "b2c67c4988cdcd4984ef39ee5801d5e2a35746ca080bee9e4f9a075100dc05be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.46.0/cratis-3.46.0-linux-arm64.tar.gz"
      sha256 "ae80425178f243dd5de42e6b5120862f27e43f41073a2e915b8917800fe905a4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.46.0/cratis-3.46.0-linux-x64.tar.gz"
      sha256 "06ddf821fdef6db43313ee91e9e3aef62d00884053c6814e79fefb322e873c68"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
