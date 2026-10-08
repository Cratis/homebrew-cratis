class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.36.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.36.0/cratis-3.36.0-osx-arm64.tar.gz"
      sha256 "b0d2849bbd0ce23bd2e5a1bf50712d4c2667f5056e180913706ed6d2b7f93006"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.36.0/cratis-3.36.0-osx-x64.tar.gz"
      sha256 "dde34941647a217a8af7c7acbc1bf1a54cd1f5ee05c3f9af7efb2d0058d85f09"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.36.0/cratis-3.36.0-linux-arm64.tar.gz"
      sha256 "bd5660a46a438ad14f8cf3ae155b937c70f3da041bf8d49e004f71ffcead5893"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.36.0/cratis-3.36.0-linux-x64.tar.gz"
      sha256 "d59a1d3784f8758fd8a7726da8bff5cb9e7d653c090f604a10319c24b13677a7"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
