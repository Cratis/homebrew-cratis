class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.1.6"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.6/cratis-3.1.6-osx-arm64.tar.gz"
      sha256 "5e965ac658b92189277c66c40d2e096b57f0d38ede59eb3fffd004de39466498"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.6/cratis-3.1.6-osx-x64.tar.gz"
      sha256 "6ad891a5977c3d0ec20f4f8f2498c8849f39156ddf8ca16e5034bf748828493f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.6/cratis-3.1.6-linux-arm64.tar.gz"
      sha256 "447faad61a7aa964be0cb490270381728a7358c03eeb0140023ae6b5fb232c26"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.6/cratis-3.1.6-linux-x64.tar.gz"
      sha256 "8f724feb492e12fb8ef2dc9616dc7a21ecd586aca8db9d0cf423811120bf2a67"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
