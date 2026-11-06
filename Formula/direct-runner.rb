class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.38.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.1/direct-runner-3.38.1-osx-arm64.tar.gz"
      sha256 "3a65363b1e4888e59ce15b4247e62aa0ef4ff590ccba2055ef67dd53906ef586"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.1/direct-runner-3.38.1-osx-x64.tar.gz"
      sha256 "b0d451fc9a0534a23427d02717d3bc8c655d1ddb3017958b9d57c266832f916f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.1/direct-runner-3.38.1-linux-arm64.tar.gz"
      sha256 "5c2cce1144c3b48685cc58fe06562f7724aeda285bbe54e766a425ff9efcf8f5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.38.1/direct-runner-3.38.1-linux-x64.tar.gz"
      sha256 "07028b599d9100b7b5e429fd390967bd205397eb16673b0bdb72f1c508ef2763"
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
