class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.103.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.1/cratis-3.103.1-osx-arm64.tar.gz"
      sha256 "e183b09d9890b7c4153ab3fcae43dccbb8ad6058b61a9703a36cd287d478bb88"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.1/cratis-3.103.1-osx-x64.tar.gz"
      sha256 "4fedccbb34cd3df9a9d5e7ce57f439f515374fc0c6e54fb9f58b9c9d188db87b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.1/cratis-3.103.1-linux-arm64.tar.gz"
      sha256 "05fb0732267f9e74031beeb5c252434f81ea8a4a5a49a77e4f4e95387069b566"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.1/cratis-3.103.1-linux-x64.tar.gz"
      sha256 "1f023989b4cb83ce627443cb743a96ae2e90f90ca1a80d05210b1470c503d00e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
