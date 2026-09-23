class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.12.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.12.0/cratis-3.12.0-osx-arm64.tar.gz"
      sha256 "83c83ea6d44507566f52f7cd7ee073b56b9dcba44fa4890e455bd3536b3b746e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.12.0/cratis-3.12.0-osx-x64.tar.gz"
      sha256 "72753250b949cc08e106bc52bbb2a8ddf959a9f8429847d8bc122c218c48aeba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.12.0/cratis-3.12.0-linux-arm64.tar.gz"
      sha256 "3ce81361d3cf4018b7aea51e6c78e490b7f087d5cdbef012e8d714a6a8515438"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.12.0/cratis-3.12.0-linux-x64.tar.gz"
      sha256 "4498ad866bf0ad9d41532f5168c2e30025892b78e7500f6334d47f7f80742cca"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
