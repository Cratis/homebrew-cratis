class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.141.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.141.0/cratis-3.141.0-osx-arm64.tar.gz"
      sha256 "1013ea007081b07fdbf475a2017f8fa82f45e9421ab8839b7eafbdea331d9153"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.141.0/cratis-3.141.0-osx-x64.tar.gz"
      sha256 "afcd80f36aa902391c738b7c4885a087b0e7e58cfbecf0cfbbc221b2a4fbb9ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.141.0/cratis-3.141.0-linux-arm64.tar.gz"
      sha256 "0eb7332edc137fd4ffabb906be943e4ae29851b8ea37149cd21538f9c7e7dad8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.141.0/cratis-3.141.0-linux-x64.tar.gz"
      sha256 "bdfe6e177ebe26f98c6a10941bd435820cdd0eb452d89ee3e3210ac1e5168933"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
