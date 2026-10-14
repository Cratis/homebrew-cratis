class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.62.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.62.0/cratis-3.62.0-osx-arm64.tar.gz"
      sha256 "86dbf4887388817d961711dd4cf62893adb3fbb6c4adc61776a9fa07a3b201d3"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.62.0/cratis-3.62.0-osx-x64.tar.gz"
      sha256 "953ced808b16ad83abe51b756164c7e7e64dedb9cebf5bac0d77f0dd50a99934"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.62.0/cratis-3.62.0-linux-arm64.tar.gz"
      sha256 "b24686bb4bc8e682168deba96c7a32a469f992cb5abb6f829a7477623a35628a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.62.0/cratis-3.62.0-linux-x64.tar.gz"
      sha256 "51c2389eb50b85f0e26f60fa263ed98fac7b6e326b64d9526b821521b582cfe7"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
