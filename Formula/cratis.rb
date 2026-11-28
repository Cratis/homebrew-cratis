class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.155.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.155.2/cratis-3.155.2-osx-arm64.tar.gz"
      sha256 "64c5c189a874a5397423433a13662434c6566c3a5c5495416f6c04d2cb50b193"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.155.2/cratis-3.155.2-osx-x64.tar.gz"
      sha256 "0510806a46a51bc80839819ec17e12b14d2204bb5e04d4ce33f8f0e2335321f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.155.2/cratis-3.155.2-linux-arm64.tar.gz"
      sha256 "bf235970235b2e07351bc4da58265ad98d84e35965175c23d55b677219ded4b8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.155.2/cratis-3.155.2-linux-x64.tar.gz"
      sha256 "3975718ad189113d26ce7b26e5dcaf8ea436947c2543509ac069b95737012be9"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
