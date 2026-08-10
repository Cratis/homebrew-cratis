class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.6.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.6.0/cratis-2.6.0-osx-arm64.tar.gz"
      sha256 "eaf074c616fd833ef9271f4c858a5a935b0e2584f77d970f5520bbae2de12bd8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.6.0/cratis-2.6.0-osx-x64.tar.gz"
      sha256 "9a3ef1a351b8d672bfc4d672a9257e9880094027f665a84e7106928b65c51e2c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.6.0/cratis-2.6.0-linux-arm64.tar.gz"
      sha256 "6f559a6e8695c70822be78097ef03d477ca9fd1cb05b973e4a0c68506a117bd9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.6.0/cratis-2.6.0-linux-x64.tar.gz"
      sha256 "4324342bd476cea920592329d46fb5feebdb7c143f7e3115b315c7d68228c7d6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
