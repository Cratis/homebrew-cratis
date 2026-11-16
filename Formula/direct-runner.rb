class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.118.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.0/direct-runner-3.118.0-osx-arm64.tar.gz"
      sha256 "c680e4f112714e1d2c2948cd56af05f3faefe88315427ae83660823c88cddfe3"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.0/direct-runner-3.118.0-osx-x64.tar.gz"
      sha256 "6e1f677e152890f19e77d06ad2cdd2448f4edb94189f5e31c245cd0f76894da7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.0/direct-runner-3.118.0-linux-arm64.tar.gz"
      sha256 "69fdb9ce77870b9f0a732e25ab08d2b1dc9bea0492bb9404dd63fba8bde532b9"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.118.0/direct-runner-3.118.0-linux-x64.tar.gz"
      sha256 "4bbc9a9ef57597ba6dd1d7c2b80eadb92496c012ad2c300e0aa92a04aad2c63f"
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
