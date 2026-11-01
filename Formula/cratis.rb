class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.113.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.113.1/cratis-3.113.1-osx-arm64.tar.gz"
      sha256 "283071c35999cfccc34febc3c43b4e2c900eeaa4950557f73017f18596311472"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.113.1/cratis-3.113.1-osx-x64.tar.gz"
      sha256 "462c2dfd2f52f8e90886cdc30a75791ee8fb8a2b69678161620a3441c075d4dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.113.1/cratis-3.113.1-linux-arm64.tar.gz"
      sha256 "68a1f406a82979bd73833fd4a140b4a54cf62b0ac86baa9891b6d550acfa7621"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.113.1/cratis-3.113.1-linux-x64.tar.gz"
      sha256 "a4182cf4c711fa8c0719b86b0f569195d5bd1038a6206fe22da6862c3c5150dd"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
