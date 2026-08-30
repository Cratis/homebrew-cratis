class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "2.19.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.19.0/cratis-2.19.0-osx-arm64.tar.gz"
      sha256 "395c97f9c4d778122e9713784932213fc96ef5d10e78b578ef283e6b5871292a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.19.0/cratis-2.19.0-osx-x64.tar.gz"
      sha256 "0959b46c6047ce4692f8313d59a8884765392902f231f4f58cf05c3da85c4802"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.19.0/cratis-2.19.0-linux-arm64.tar.gz"
      sha256 "bf9ee44f4d3ca4e09d5c68f8725df5dc2806f7fcd89b776259414736b47d8348"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.19.0/cratis-2.19.0-linux-x64.tar.gz"
      sha256 "cff26bbb89c2bfeeb48ca5d314d444103b08e834b9de688de586a5f6e0332cb8"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
