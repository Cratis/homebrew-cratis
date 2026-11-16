class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.138.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.138.1/cratis-3.138.1-osx-arm64.tar.gz"
      sha256 "980e8f274d72d16f5e6dba0b62e3714230572960a97bb16250c8930256a8272e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.138.1/cratis-3.138.1-osx-x64.tar.gz"
      sha256 "8d0c3bab764875a2939a7442edb6592599b757cb6f99344cf2c6f16b542afed2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.138.1/cratis-3.138.1-linux-arm64.tar.gz"
      sha256 "19d61210c1911fe3134818abe8e1e62b89727fea3ad7950066369f77d5407bb5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.138.1/cratis-3.138.1-linux-x64.tar.gz"
      sha256 "9dbf7d35580432ccad06039b31e4ae4fcd885c1aaa7525d8284a2cbecb64cd3d"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
