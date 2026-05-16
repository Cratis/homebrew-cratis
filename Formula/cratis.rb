class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "1.4.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.4.1/cratis-1.4.1-osx-arm64.tar.gz"
      sha256 "2c691f798b2f8cd594099dff4c85d947d65964bb4bcca62e352b594733e20395"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.4.1/cratis-1.4.1-osx-x64.tar.gz"
      sha256 "8c9124c8429a8a85c645e11f96d3767532ece8d2019e1152ac9765b675433af3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.4.1/cratis-1.4.1-linux-arm64.tar.gz"
      sha256 "be80a368a7b108f2e38bafd2156eaf3b9609b942f9850889d26b03d5b926c891"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.4.1/cratis-1.4.1-linux-x64.tar.gz"
      sha256 "a29b308fc52b4a153a0576e9245d585539d609a6355644d3f79d60f01b1911d5"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
