class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.21.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.21.1/cratis-3.21.1-osx-arm64.tar.gz"
      sha256 "cb77cfec30deb6a76c26bb3bbb31eae1fd1656ffdcda4042c8737c0083b343f8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.21.1/cratis-3.21.1-osx-x64.tar.gz"
      sha256 "ead67a869ab1ad37ea209308a301d666ae9ea0ff5a1fb7112af9fdad23eea86c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.21.1/cratis-3.21.1-linux-arm64.tar.gz"
      sha256 "59504ad7b89d7fabd6a4b2c293359215ed8b07e8728be1e571daf081a017167e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.21.1/cratis-3.21.1-linux-x64.tar.gz"
      sha256 "fd351494c55fa9928211156592a9a71ac6a36ae6ea81a14b594f45189061d6a7"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
