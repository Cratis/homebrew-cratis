class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.10.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.10.2/cratis-2.10.2-osx-arm64.tar.gz"
      sha256 "4a140582c600d6bd1e1a032707c4af62ef735b0ebae18e9d1d31a745ec6065d7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.10.2/cratis-2.10.2-osx-x64.tar.gz"
      sha256 "b1012ded1374702fd8a347218f7f5069ed537ac1629b9621f7d57abd4accd9e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.10.2/cratis-2.10.2-linux-arm64.tar.gz"
      sha256 "53920bd0fef4d291689b50526ff663f1537e63ed4c2bc322315dd12cb0a747ca"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.10.2/cratis-2.10.2-linux-x64.tar.gz"
      sha256 "9ed5312788e823bf8e97a637128ba4662d100cf94185d7fab58bd57e5581559c"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
