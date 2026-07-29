class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.3.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.1/cratis-2.3.1-osx-arm64.tar.gz"
      sha256 "196f15792afa4dac889b16dd970496a21b3be1770ee94e8d7a999f8533a42281"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.1/cratis-2.3.1-osx-x64.tar.gz"
      sha256 "abc79804dc765a6710a587b85640c841acd5053011db9d897889a69fdac627aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.1/cratis-2.3.1-linux-arm64.tar.gz"
      sha256 "2c1b8c93be57d7c8d5dae1501bf9097e333fc7cbb3a85b24a80e284e123f5e4d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.1/cratis-2.3.1-linux-x64.tar.gz"
      sha256 "7a06b289b32bfa232fe8940410e66698a2a37a3e6ff291f73515bafcfca2f2e6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
