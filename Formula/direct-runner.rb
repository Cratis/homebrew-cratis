class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.124.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.4/direct-runner-3.124.4-osx-arm64.tar.gz"
      sha256 "6f1543e3edd41aa732e4bc18d68665d140636702a30ec56d72fd9dc19813097c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.4/direct-runner-3.124.4-osx-x64.tar.gz"
      sha256 "dabfc515f49be829acf407f3f702875f08c560222c9ceda88e6123ab961e3288"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.4/direct-runner-3.124.4-linux-arm64.tar.gz"
      sha256 "c85f980002d4ec4172b3c49ba91b5cc3691b5dfa8832b3666183d46099854007"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.4/direct-runner-3.124.4-linux-x64.tar.gz"
      sha256 "203038473e5f90544d8091ccee75c3318d894e5232979fc26249b4f707767ee9"
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
