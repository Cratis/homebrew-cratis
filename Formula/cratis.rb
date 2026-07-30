class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.3.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.4/cratis-2.3.4-osx-arm64.tar.gz"
      sha256 "11252bd54d9f32fc621ed1183490ef8f7e79aecffb4aa794c1313498ea04584e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.4/cratis-2.3.4-osx-x64.tar.gz"
      sha256 "89ad7248f5b1335f885931ed5a22e1447861a1fe4dfc8f25fe78acdb728269b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.4/cratis-2.3.4-linux-arm64.tar.gz"
      sha256 "b7d2b32509f4bc76898735a035a12951ebc350c053421c3875fcde5d6ca68091"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.4/cratis-2.3.4-linux-x64.tar.gz"
      sha256 "773d97234f159c6e45d23ef4df579d0ea1c66cdfa6772297090494404c3e26f0"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
