class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.15.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.15.1/cratis-2.15.1-osx-arm64.tar.gz"
      sha256 "883349fa4af313e35f3de5a7a3c59a672faf94fcb709bf0fd53cf5419731d49e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.15.1/cratis-2.15.1-osx-x64.tar.gz"
      sha256 "f40fc66b451d8fc6194f496495ee5eadfa2ba6d8bc153888dc495787a7d48401"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.15.1/cratis-2.15.1-linux-arm64.tar.gz"
      sha256 "464a9a50afb59b85cb1d0c71bc2180f71bdfe71ebc5170a0f4231c873697a50b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.15.1/cratis-2.15.1-linux-x64.tar.gz"
      sha256 "d165cdffecd8156eb6f9acb55c37103b09287a26cd86f031cce7c71a7fbd3a37"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
