class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.31.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.31.0/cratis-3.31.0-osx-arm64.tar.gz"
      sha256 "40dec23e9190331bed5fd56379f5e6f297b920f1d5a5f51692b1c964c1d12416"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.31.0/cratis-3.31.0-osx-x64.tar.gz"
      sha256 "d9e114b694885d0f8b77d1fc8dcc55cbb090a0b929518a8a5d45032892dfe23b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.31.0/cratis-3.31.0-linux-arm64.tar.gz"
      sha256 "acf2bad83d2ad34d5409690e9b49e6a2be628d09422f273ed3daa409a7c1ea86"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.31.0/cratis-3.31.0-linux-x64.tar.gz"
      sha256 "44d1d07c45a2b9d8d2fa661e490ccad3ac6fcbf393b152af3bb14ab313844fa3"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
