class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.111.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.111.0/cratis-3.111.0-osx-arm64.tar.gz"
      sha256 "1ea54aff3eb052421d2cc6687689a3b13bdb0c30993d83ea508fd52a69c2aabe"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.111.0/cratis-3.111.0-osx-x64.tar.gz"
      sha256 "cadcb4db9d5a67fa52ac83e4e8711f7a13fc495ae206003ffa34d2b1758eedc1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.111.0/cratis-3.111.0-linux-arm64.tar.gz"
      sha256 "b70a2a88219d4aa8da413bf7a08142c3fa31bdf68df9ee991dbd01b699cc3119"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.111.0/cratis-3.111.0-linux-x64.tar.gz"
      sha256 "74645ae46c53c4b5b7b7a0dab0abbcd4c561069a0d7ccee4f0bf56a616a63d83"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
