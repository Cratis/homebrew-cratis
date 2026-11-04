class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.121.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.121.0/cratis-3.121.0-osx-arm64.tar.gz"
      sha256 "2f741a51fe16447c74a43c0fefd8fa80a03740e8791aa1c138030c04c5e3a9c0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.121.0/cratis-3.121.0-osx-x64.tar.gz"
      sha256 "54164327d7760399ad56dda214fddc94884995a1179c54be881dad3c7853f824"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.121.0/cratis-3.121.0-linux-arm64.tar.gz"
      sha256 "19a489c8caadf5ffe8237e2ceb1200930eff5490932d13848d192cf3c2a6ff42"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.121.0/cratis-3.121.0-linux-x64.tar.gz"
      sha256 "abfe8a3c11703b63a8c866e033110f6abb1a560968e9f9efeb6b09cecc2d94dd"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
