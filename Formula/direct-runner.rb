class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.76.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.0/direct-runner-3.76.0-osx-arm64.tar.gz"
      sha256 "f15ffab1b73c093bc2902d13ff7e950108bb46e7489f30245509d33c23ca6e4b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.0/direct-runner-3.76.0-osx-x64.tar.gz"
      sha256 "8ba10bf866061253c291d428c7348114246d4bae94206802ba5ab638c2b93e13"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.0/direct-runner-3.76.0-linux-arm64.tar.gz"
      sha256 "a2bd8863b53ae7e706fc3edb348ee4b52bfa32f7c111ab23fe36969ec3ccdc06"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.0/direct-runner-3.76.0-linux-x64.tar.gz"
      sha256 "fc553e1438a3321c39b8f63528cb3ed4c6cc4279c176251bb593280c8262aadf"
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
