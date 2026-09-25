class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.18.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.18.0/cratis-3.18.0-osx-arm64.tar.gz"
      sha256 "525332236fdac861a78adaabac5ec415d44f3f5df9ccb3c8deed2a680310e23f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.18.0/cratis-3.18.0-osx-x64.tar.gz"
      sha256 "78cd44b5e49ea20dd9988cab90600e2ae81b370a07d035a13d9c5c044a2d2164"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.18.0/cratis-3.18.0-linux-arm64.tar.gz"
      sha256 "e785963061ff0acf9ab133dd2c25ea4c9dc955c9385e10d6e576f029369d4676"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.18.0/cratis-3.18.0-linux-x64.tar.gz"
      sha256 "dbb925f1a4176a6c0e6d6ae31af7d41655b9026fabb3fc9d5392ec5340608dbd"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
