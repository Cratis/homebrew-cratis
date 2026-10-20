class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.93.7"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.7/cratis-3.93.7-osx-arm64.tar.gz"
      sha256 "a0401e6d42a69501a564f475256d77f2af7448af686dc95bac3d6dfb4561e0f8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.7/cratis-3.93.7-osx-x64.tar.gz"
      sha256 "e96347b7c052cf3b6dade461ab4ea192d0797db16f6978cec8ecd9a4a89c794b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.7/cratis-3.93.7-linux-arm64.tar.gz"
      sha256 "7759e7653d567a96a8f5a06d1434f20e28180c899d659a45cc9a25b80ab3045d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.7/cratis-3.93.7-linux-x64.tar.gz"
      sha256 "efbd98ff555279a154d465c751e513de38b539b5226d4c23e6ded01718cc2e9d"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
