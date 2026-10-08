class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.35.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.35.0/cratis-3.35.0-osx-arm64.tar.gz"
      sha256 "68ae5ef977b8d6e53e1efc97c01dbd40882633661d219b9728c362d52f175011"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.35.0/cratis-3.35.0-osx-x64.tar.gz"
      sha256 "58b268a07a7dfa1bf3e2140031c29e765f69cd91dbd588f27fa3300b78ebd35e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.35.0/cratis-3.35.0-linux-arm64.tar.gz"
      sha256 "d2825c9e4a9cb0e2166917f09e62c5fcdad51bdbae8d120e47bc4c7ae1aa1c4f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.35.0/cratis-3.35.0-linux-x64.tar.gz"
      sha256 "90398236e39f1dd50fa74d9e8ecda42e8f86e1d7a317e2a4279a6c1f577c5452"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
