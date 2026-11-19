class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.136.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.136.0/direct-runner-3.136.0-osx-arm64.tar.gz"
      sha256 "814e3f24ddf9fa0a91b43af1b7e9c2a0737c870b7da4b6c867d84cd7be27accd"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.136.0/direct-runner-3.136.0-osx-x64.tar.gz"
      sha256 "f8c3342d77d5166413978799cfc6d92ae88425083a01b440cf23cd18626e200a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.136.0/direct-runner-3.136.0-linux-arm64.tar.gz"
      sha256 "357afd2185e72ecadbc4bcc5fa8ea70445d18fd33af325e6f25e78057b4e0885"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.136.0/direct-runner-3.136.0-linux-x64.tar.gz"
      sha256 "74140ed7ac7a2ed79f8ba576c9b73738f678ecd848f48abe3e4ec4b72e197ba5"
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
