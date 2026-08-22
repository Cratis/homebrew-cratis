class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.14.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.14.0/cratis-2.14.0-osx-arm64.tar.gz"
      sha256 "033c5a364df61bfef3b8ff48034ab3d24ecc21a718fe8d7774c3efa70c860998"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.14.0/cratis-2.14.0-osx-x64.tar.gz"
      sha256 "ab82aba9c05c1ee6b88221f8fdfa0c8b5eb450eceab7df9bba943d0142148d01"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.14.0/cratis-2.14.0-linux-arm64.tar.gz"
      sha256 "c476e58e366e04812ee7058a20cc30986bf48c18c24113323f7974ba200fd486"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.14.0/cratis-2.14.0-linux-x64.tar.gz"
      sha256 "11f9252e71b50737933a285cc279802158ff427a8234264c265cb40d82fb498b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
