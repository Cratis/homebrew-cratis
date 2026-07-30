class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.3.7"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.7/cratis-2.3.7-osx-arm64.tar.gz"
      sha256 "e136bfb0f85454c5bb97506f4f3d7d56b49f161671b7b76dfd4e5b4abd635038"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.7/cratis-2.3.7-osx-x64.tar.gz"
      sha256 "109ad98624db7312698bbc1c1c57cea4406a93ba44f2b3b1004ca1c7da92111d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.7/cratis-2.3.7-linux-arm64.tar.gz"
      sha256 "8b480b385ceb3338d0e4af75dd1aeafa8f4bd2e0d2da55fa66c75bc3c604a80d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.7/cratis-2.3.7-linux-x64.tar.gz"
      sha256 "455c57f6ddb2255b225f031295157ad0e07d031d1965d587eef14a6775588046"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
