class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.6.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.6.1/cratis-2.6.1-osx-arm64.tar.gz"
      sha256 "a55fb1d47678d308732ad9e43442d376617028e2bcd7770ddf14fa0af9456aa2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.6.1/cratis-2.6.1-osx-x64.tar.gz"
      sha256 "dc89179de82921fdaad3b87788d940ae79aed9f41d7d1eea60f66d9d8b0b3672"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.6.1/cratis-2.6.1-linux-arm64.tar.gz"
      sha256 "59cef44bf2a5e16facbb31ccab5729892d40c811004e438a4bec3a40b1cefb4b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.6.1/cratis-2.6.1-linux-x64.tar.gz"
      sha256 "701be7d2648d575ca934150bd9d661ef58f0b2758ef2b60b836519386bfd4d5f"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
