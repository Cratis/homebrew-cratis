class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.36.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.1/direct-runner-3.36.1-osx-arm64.tar.gz"
      sha256 "edebbba73a3bd8c4fc71004bd3b2382088067186619d965d43f3496bb1a017f1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.1/direct-runner-3.36.1-osx-x64.tar.gz"
      sha256 "49028aea2a746018ad00c530cb306bd69818659fa55465650ebe22063773b25b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.1/direct-runner-3.36.1-linux-arm64.tar.gz"
      sha256 "1cd5a9deeb84c7eb8a1edea21f0ee7057b60170a8f1a5fb02d27320cb8da287d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.36.1/direct-runner-3.36.1-linux-x64.tar.gz"
      sha256 "a6c17f907b1155e9ccba8c646d033bf97f5e4fe58546571588e629e8a36bfa4c"
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
