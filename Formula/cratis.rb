class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.54.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.54.0/cratis-3.54.0-osx-arm64.tar.gz"
      sha256 "d29b56affbd04944e1b43365daf33287ffa9c6990dea80d51b9a911816abe28d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.54.0/cratis-3.54.0-osx-x64.tar.gz"
      sha256 "79d14ee8819d591c1e7d94ca6e41fdf5b16b122efc6f981f13a30fedd47d6c1d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.54.0/cratis-3.54.0-linux-arm64.tar.gz"
      sha256 "22cd7a98750ff866d1be02454cf7ae12aa7c990edb5b4cf31128444081cd9848"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.54.0/cratis-3.54.0-linux-x64.tar.gz"
      sha256 "2329d470d9ffd9d5d9efde9379227b3bbd8d73e9b4ad01beea8a5ccd3df781e2"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
