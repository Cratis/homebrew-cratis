class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.0.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.0.2/cratis-2.0.2-osx-arm64.tar.gz"
      sha256 "df466b5f9ee8045a954ee0bcff8685d29ed6c35487dd4941a8c7fc7a197ca89d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.0.2/cratis-2.0.2-osx-x64.tar.gz"
      sha256 "285bfe5ac55ee8588c0b52329456ce4cf8fcf902145a7f12cdb6329d26949feb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.0.2/cratis-2.0.2-linux-arm64.tar.gz"
      sha256 "67bc4eb31d17c5a00c89c3aedfaf667e940477b81013fc91f9836df042206bfc"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.0.2/cratis-2.0.2-linux-x64.tar.gz"
      sha256 "48678a41d8236bb62e1da9a0b8e56a355750c17e99af4ab7ffb876da7a6b3407"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
