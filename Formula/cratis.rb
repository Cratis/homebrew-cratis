class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.91.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.91.0/cratis-3.91.0-osx-arm64.tar.gz"
      sha256 "cd6569e26d5d90ba2a805ddd812bd954b38965cfcb0087049a2bd1d12ac2ffa3"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.91.0/cratis-3.91.0-osx-x64.tar.gz"
      sha256 "a355341ce8644183632b9d161dac208813418e123c25d02679837399e2877f0c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.91.0/cratis-3.91.0-linux-arm64.tar.gz"
      sha256 "58ab6a655382a3714ffe4467b523ae8298d32fd7190dc6631e1a999158a92487"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.91.0/cratis-3.91.0-linux-x64.tar.gz"
      sha256 "79798eba4519f30ca571337a7b11f04bf9db7e4fba01245382cd12e8f35e115b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
