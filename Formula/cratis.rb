class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.74.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.74.0/cratis-3.74.0-osx-arm64.tar.gz"
      sha256 "577fb9dd428802d62cae7fc13e4c84953b3700d8c7891c729eb0b534e968b596"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.74.0/cratis-3.74.0-osx-x64.tar.gz"
      sha256 "9acfe354fa96afc5523e568486b6b072e4c16c8d0265f530850047c13cccdcd3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.74.0/cratis-3.74.0-linux-arm64.tar.gz"
      sha256 "c7cdbf98303589328d7703a1695353ec8ad8cda10a4ccc0a603edd37403ff4b4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.74.0/cratis-3.74.0-linux-x64.tar.gz"
      sha256 "158e7321e443b840309b19a1b05e195d36b9ff53a9fb16ea4a624052819cff58"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
