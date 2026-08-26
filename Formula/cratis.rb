class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.17.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.17.1/cratis-2.17.1-osx-arm64.tar.gz"
      sha256 "94b0a3a457befda392771c0cb8c421926dbef3ef6c3d62de752926533686fd6c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.17.1/cratis-2.17.1-osx-x64.tar.gz"
      sha256 "fad2d7190cb0807942e5032033d7f9c4f9ec152f2d8e7c163ca1ff22cf07a241"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.17.1/cratis-2.17.1-linux-arm64.tar.gz"
      sha256 "238f5191e4f7a43ce01eb48a0ea247f9dc65e5d37cc67b3273bc6653712f9957"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.17.1/cratis-2.17.1-linux-x64.tar.gz"
      sha256 "3bd7ddf2728120823c48836fb3f67d5dd0e26420f681802545fc47e6ad6eebf5"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
