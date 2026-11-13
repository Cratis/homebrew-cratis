class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.75.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.2/direct-runner-3.75.2-osx-arm64.tar.gz"
      sha256 "9a29382924ea6ee36548f69bf7521f294a2b66bd2da3f34b735e2f3c768201d9"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.2/direct-runner-3.75.2-osx-x64.tar.gz"
      sha256 "89521319a49d6d2e4e4148b2a845b134dd144dfa383e72a1f9f55db8b58b0e98"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.2/direct-runner-3.75.2-linux-arm64.tar.gz"
      sha256 "8af7990bd1fb3a2f011fd6332291629c7912b050757d8323cd97e16cf5a8e634"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.2/direct-runner-3.75.2-linux-x64.tar.gz"
      sha256 "56011b290e13a9d20ac29a4c2b5fa661c9898ddd74e1449e259751198ce604e2"
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
