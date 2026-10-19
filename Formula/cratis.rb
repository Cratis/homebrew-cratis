class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.88.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.88.0/cratis-3.88.0-osx-arm64.tar.gz"
      sha256 "be13b63f6fc574d84856f3ae6d1f45979acf603adb2d269c4469cd1b1b5e3f4c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.88.0/cratis-3.88.0-osx-x64.tar.gz"
      sha256 "9bb6da5d0960f9f75dbda7385cf98852aa67bcda6767b654afa6acf1e401696a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.88.0/cratis-3.88.0-linux-arm64.tar.gz"
      sha256 "7fb514053ea399be9763385a384bf238811fd15918419d0f7510f25419654502"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.88.0/cratis-3.88.0-linux-x64.tar.gz"
      sha256 "b7719ded8de51a86c3da25fbb6623ba79a59e00b224ef189d30372af7543865a"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
