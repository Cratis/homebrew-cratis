class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.53.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.53.0/cratis-3.53.0-osx-arm64.tar.gz"
      sha256 "a7f561f87c27c1bc441de6e8feb44e6827b0cbe2dc71c357c0da6e1ed204dbd5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.53.0/cratis-3.53.0-osx-x64.tar.gz"
      sha256 "a068aef2999060ac0c6bdda4e752b124e694d5d9513b6ce0e377c9a62a49000b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.53.0/cratis-3.53.0-linux-arm64.tar.gz"
      sha256 "4068ea3c45c66ead443550d9c1dac13cbd638aa27a99af5e2e82bf5978324ee1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.53.0/cratis-3.53.0-linux-x64.tar.gz"
      sha256 "ffa225a32961250c0295269146c8b256406eb0999f4566750bb3f1a4c73ded52"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
