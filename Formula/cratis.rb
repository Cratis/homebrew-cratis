class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "1.6.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.6.3/cratis-1.6.3-osx-arm64.tar.gz"
      sha256 "c32e4809a92c46ca6ec1850d79bf1615843de280064ca107d510a963044cbba7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.6.3/cratis-1.6.3-osx-x64.tar.gz"
      sha256 "8b75a4cf38630699332aad4ec26114db81e705ad1634d5aab9ae4daada92833f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.6.3/cratis-1.6.3-linux-arm64.tar.gz"
      sha256 "6c5d79a66579525d11e73ea1f607e60f354ecabde064b9956a154d8ebe9eb62c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.6.3/cratis-1.6.3-linux-x64.tar.gz"
      sha256 "ea2dc4e47fc4f12d4c231f685d364d751b37b1fec0fc249f370a4f68a8a657ea"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
