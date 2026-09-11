class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.1.5"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.5/cratis-3.1.5-osx-arm64.tar.gz"
      sha256 "960bd4bfa8a88bb70a0070ff3be3a67889339c6199e134c1b61e2631f4b34a1a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.5/cratis-3.1.5-osx-x64.tar.gz"
      sha256 "1d52f9ab47fa2f7f296fa288ece43acfa29cdb5855f8a06a26637128dde233f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.5/cratis-3.1.5-linux-arm64.tar.gz"
      sha256 "4ef2efa91a1efc980db55af6fd8aeccc37617b16cd3c6d91d7e80e49fcda9abe"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.5/cratis-3.1.5-linux-x64.tar.gz"
      sha256 "eb85577ab25f081209fb5686946d0168c6be4b6bc1c669f2ce9fc43bc3ff3c77"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
