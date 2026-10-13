class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.57.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.57.1/cratis-3.57.1-osx-arm64.tar.gz"
      sha256 "83e15c26f89f101fe62faea3e9cde748f7ff67c1031593ee720f857e11325ebf"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.57.1/cratis-3.57.1-osx-x64.tar.gz"
      sha256 "44c049bf4670164390796a5b2e9b437e247fa7b93fd3d89183d59f0d0948eb11"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.57.1/cratis-3.57.1-linux-arm64.tar.gz"
      sha256 "717b634b580019896aec09092f49fa1701946b73d5a06bed64fedf0e51274399"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.57.1/cratis-3.57.1-linux-x64.tar.gz"
      sha256 "88840476fb716fca3d058fad25081a5443b14c57830c20c6e6baea86beeb1ec8"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
