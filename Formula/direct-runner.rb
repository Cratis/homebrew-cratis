class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.119.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.119.0/direct-runner-3.119.0-osx-arm64.tar.gz"
      sha256 "95a76aa445695f8acb7f1ca215577f335b8307096139a3eabcaee416f234d430"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.119.0/direct-runner-3.119.0-osx-x64.tar.gz"
      sha256 "3c4bc633b7b2c17d0e4537335180f3228049e52bc5835be1ea2315e8008f49a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.119.0/direct-runner-3.119.0-linux-arm64.tar.gz"
      sha256 "57919ad44912214a30e74b91828f25054461fe0ddf8bb2bc21934a8fb88f7d66"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.119.0/direct-runner-3.119.0-linux-x64.tar.gz"
      sha256 "f785257b76661710f26e0f90a792486729a7512314af7c7e553f084668039108"
    end
  end

  def install
    bin.install "direct-runner"
  end

  service do
    run [opt_bin/"direct-runner"]
    keep_alive true
    log_path var/"log/direct-runner.log"
    error_log_path var/"log/direct-runner.log"
  end
end
