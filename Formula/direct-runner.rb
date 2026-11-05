class DirectRunner < Formula
  desc "Runs Direct's agents on your own machine"
  homepage "https://www.cratis.io/direct/runner/getting-started/"
  version "3.20.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-osx-arm64.tar.gz"
      sha256 "88de58c6f92ca61b2e22aecd00777ab977f1fdd315f5fc61cfd8e595072b5de0"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-osx-x64.tar.gz"
      sha256 "ae8750ab9c12a2fd36bfde3751c0464005e852417d7480f209d0c3fcda1f326b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-linux-arm64.tar.gz"
      sha256 "a0d0589e53fd5247d44ec5c5453af44654a1e4551c9bb6fa17c3bb8776a6c13d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.20.3/direct-runner-3.20.3-linux-x64.tar.gz"
      sha256 "bce149d6bcd71f8e2395bb9c7ddf6285c832de5f8aebedbf686c8e3c285ed6d8"
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
