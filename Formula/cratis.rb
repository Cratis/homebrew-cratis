class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.131.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.131.0/cratis-3.131.0-osx-arm64.tar.gz"
      sha256 "437c4f6a1d34014a6b9b1e10c7662946da578858c16addd95f018e216787b1f8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.131.0/cratis-3.131.0-osx-x64.tar.gz"
      sha256 "86949233ebb6d56e59579b8d56dba1ff8007836bc279e8c0ba33638062ee9794"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.131.0/cratis-3.131.0-linux-arm64.tar.gz"
      sha256 "28c57d0b1684d7acbe34318d5e7f6c8e0402ca72f86f5f9508c925570c01531a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.131.0/cratis-3.131.0-linux-x64.tar.gz"
      sha256 "579a87fb4969e40e13fefb77f92487fc0dbbd5b303cbe9d7408cbdfc7cc75b29"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
