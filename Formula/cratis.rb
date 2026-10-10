class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.43.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.43.2/cratis-3.43.2-osx-arm64.tar.gz"
      sha256 "f1a510545963a83b031dabb4a98e5aaf733298f19dc444a484dac2d008dc0611"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.43.2/cratis-3.43.2-osx-x64.tar.gz"
      sha256 "783f691093e86e08e1383396768f8bd22c57e4cf3c74252c918087354a51fd78"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.43.2/cratis-3.43.2-linux-arm64.tar.gz"
      sha256 "fc60b56f5d6bf8b40f9a11f959f6fc83a7d76e090a846bdf026edb6286607ad4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.43.2/cratis-3.43.2-linux-x64.tar.gz"
      sha256 "fc8a3df267681b4602f393155108f8c1f4f02a68284728e3bba7b22005214e35"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
