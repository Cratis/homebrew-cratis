class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.56.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.2/direct-runner-3.56.2-osx-arm64.tar.gz"
      sha256 "ff56946991bc703c786c42e411787bdaf0e27d02d9e930b8626dd3d9d0425f61"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.2/direct-runner-3.56.2-osx-x64.tar.gz"
      sha256 "dee4030eecde80ee5fac56260a602387c9f6d9d57dbc701706c4529ec8283773"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.2/direct-runner-3.56.2-linux-arm64.tar.gz"
      sha256 "ba96a4e05735506ce652cbea9cad35b09d5f73eda93ce4c32c76bfa6f9cad86c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.56.2/direct-runner-3.56.2-linux-x64.tar.gz"
      sha256 "8b55904a993bafb4c6034be45731bc0612ef4891422de64210f35dff7fa857e8"
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
