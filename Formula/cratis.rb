class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.32.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.32.0/cratis-3.32.0-osx-arm64.tar.gz"
      sha256 "f3ce1baba3f2ce4d88830f4aa59d86abece42b8c91c6adfe24889e6ca3a68327"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.32.0/cratis-3.32.0-osx-x64.tar.gz"
      sha256 "0fc83c0a53ce4ac0b35a5891a9cace85326ede31eaf17a7edaaab86370d53303"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.32.0/cratis-3.32.0-linux-arm64.tar.gz"
      sha256 "1ef215746c65afebc3cc749c132568f10a307e7eefca2aecb833be88aa31ad02"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.32.0/cratis-3.32.0-linux-x64.tar.gz"
      sha256 "d8e8f045d717fa09dead5006bb3caeea62a3d0c379b54107cb5e216776812504"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
