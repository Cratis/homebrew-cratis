class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.115.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.115.0/cratis-3.115.0-osx-arm64.tar.gz"
      sha256 "78b5ea9459901123bf5d31cdb7fb111c4ee087bbda2f004a1862f4ea91143e14"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.115.0/cratis-3.115.0-osx-x64.tar.gz"
      sha256 "60d27915999a66348a3fcf8a4553c9a1b58abc89497f96e099b7901f453ca468"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.115.0/cratis-3.115.0-linux-arm64.tar.gz"
      sha256 "ef56fa67e55ea45dcd8f494d10cd0db5dc7d2163bc0d03e30ce8802f6ba11164"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.115.0/cratis-3.115.0-linux-x64.tar.gz"
      sha256 "0875605b95f2d77f5b6c4ae7256532ffdf1459f131568ddfe8b5eee3dd650c49"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
