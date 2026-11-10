class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.126.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.126.0/cratis-3.126.0-osx-arm64.tar.gz"
      sha256 "ade1dad7925913c23a250e4c5e2002f0757b7d24ad7ba194d1ab689faaa5887c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.126.0/cratis-3.126.0-osx-x64.tar.gz"
      sha256 "2615a5d2c9e8ae47aee920e3b4310bd4e9a6ebc52a3500ff5658e845dc0ec565"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.126.0/cratis-3.126.0-linux-arm64.tar.gz"
      sha256 "a1744e219409389fe72b365200f98cf837add2fe60ea588fd5bc09708a3daa2c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.126.0/cratis-3.126.0-linux-x64.tar.gz"
      sha256 "681b9c6f70cf2e0d0767f2bd415a8b984c1b8e1d4ac75f773902a638b0dff46e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
