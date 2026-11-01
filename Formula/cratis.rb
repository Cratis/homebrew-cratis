class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.116.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.116.0/cratis-3.116.0-osx-arm64.tar.gz"
      sha256 "a12519d948fdf75ab6fd52172ee976b596089fc4d9e6469e6697449f83dd34aa"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.116.0/cratis-3.116.0-osx-x64.tar.gz"
      sha256 "9b59332119addf23f6884bf8aff7791b9b671e466fd720234857ea94123b9827"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.116.0/cratis-3.116.0-linux-arm64.tar.gz"
      sha256 "0c85c98543e6fdb5615e329fa5965cdd3bfc022c450880e01e3202617fd87e26"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.116.0/cratis-3.116.0-linux-x64.tar.gz"
      sha256 "0ac58cbfe5e6373e6aa824169cc389d61986f8adeef06b8100ea4c936f88c6e5"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
