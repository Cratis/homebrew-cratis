class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.40.7"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.7/cratis-3.40.7-osx-arm64.tar.gz"
      sha256 "12992cbc8aa866daf1197bc9c5a52359dff52950ecda0c994af36f32cfc7a937"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.7/cratis-3.40.7-osx-x64.tar.gz"
      sha256 "e75c048d71e70f7a6b50f05fd8e158582a87a693dc915bacfb457dc8d5bcdd32"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.7/cratis-3.40.7-linux-arm64.tar.gz"
      sha256 "f8d5728a5abe0c1ee2fc94f8c1aff2d37f405469036fc4d38a11378abd052d70"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.7/cratis-3.40.7-linux-x64.tar.gz"
      sha256 "7b08ec5773ada3bcc804caf8b87de1ef737f8d30e696889fefb7775cfe365f45"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
