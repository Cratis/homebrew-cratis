class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.138.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.3/direct-runner-3.138.3-osx-arm64.tar.gz"
      sha256 "f76889aa31f87a66b42f84c7e52bff3e41ae4ef57268d129ea61c40ac1295f30"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.3/direct-runner-3.138.3-osx-x64.tar.gz"
      sha256 "9f04c03214b0a7b8009a4efdd08cb4695eb9c835770cf61ac3f7fd1653d770f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.3/direct-runner-3.138.3-linux-arm64.tar.gz"
      sha256 "e2417d45185a1599671061595142f9f0b34318d65edbfb5de07748046091ad4f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.3/direct-runner-3.138.3-linux-x64.tar.gz"
      sha256 "c4d7aae97c39b77bc5acaa432a1e362256bd6a2ea5dbb9cdaecaaf9cb901aad8"
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
