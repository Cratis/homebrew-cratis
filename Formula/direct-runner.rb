class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.137.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.4/direct-runner-3.137.4-osx-arm64.tar.gz"
      sha256 "8e133f5085d3d5eddbda2374e21eea7f2cec045c27cd0cd947780c09d9a38abf"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.4/direct-runner-3.137.4-osx-x64.tar.gz"
      sha256 "d2b6cdc0422d92005ebaea523036d849891be613fbe62e9a47b8ae348ad969c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.4/direct-runner-3.137.4-linux-arm64.tar.gz"
      sha256 "4acaf9c24baebfef0344735140581e47e07a90abae6493978a93f2afb37f66b1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.4/direct-runner-3.137.4-linux-x64.tar.gz"
      sha256 "371872a84d234846e701d6c9c24f5771933ce2062412fdeb8d71402c710c95fc"
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
