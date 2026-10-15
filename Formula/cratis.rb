class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.66.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.66.0/cratis-3.66.0-osx-arm64.tar.gz"
      sha256 "307cbc89facf57a041f80cd337ad294636ef2a5c6fd4874f75fafbf2d7329418"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.66.0/cratis-3.66.0-osx-x64.tar.gz"
      sha256 "56324641f72778041377e540f108c0257c1ff1bc63077b5e2fe1182bf51dc1b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.66.0/cratis-3.66.0-linux-arm64.tar.gz"
      sha256 "83c94c6114d7d9c44ecda47acbd4034c864e71d9450bc803ec4cd4c1c9fa2d18"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.66.0/cratis-3.66.0-linux-x64.tar.gz"
      sha256 "7316dbcc8976a7f16d08110dc273f57e566ba75065f2af57b106e12796ad0e85"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
