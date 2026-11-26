class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.152.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.152.0/cratis-3.152.0-osx-arm64.tar.gz"
      sha256 "d97b9ff21a9f3c2edcb2fea40450313b26e39a63238f603c0cb7a24cc3400eb7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.152.0/cratis-3.152.0-osx-x64.tar.gz"
      sha256 "cc3cfaffd604aad0d14dd23d53803a42994c9f98070c3507aa0a1c75d395faed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.152.0/cratis-3.152.0-linux-arm64.tar.gz"
      sha256 "c3d215fdda7ec1cbca6667916f0646bd91612ad3d2dbe848740a1b191a718adf"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.152.0/cratis-3.152.0-linux-x64.tar.gz"
      sha256 "7e29a085d9adb99055c941244a628181f17a6a1127b8b490f42692a404961fdb"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
