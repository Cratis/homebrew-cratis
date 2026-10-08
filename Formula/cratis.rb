class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.33.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.33.0/cratis-3.33.0-osx-arm64.tar.gz"
      sha256 "74a944e224767b86b182cc6c087306de776f86d8e5afbafce52fb0b3e25c4978"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.33.0/cratis-3.33.0-osx-x64.tar.gz"
      sha256 "aadc6d1b56045c6c6f7852454e7cb1f4e00c7139c700c60ccd837c2ac276d80e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.33.0/cratis-3.33.0-linux-arm64.tar.gz"
      sha256 "e36c3305afaa213a4ca91167c34597485cfb72eabc6b7cefd728ef46fe8c3707"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.33.0/cratis-3.33.0-linux-x64.tar.gz"
      sha256 "65c04e628cd169b646a9e45ea3f96782795b19d4e02b140d9c05e7682e7a1de4"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
