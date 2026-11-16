class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.115.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.115.0/direct-runner-3.115.0-osx-arm64.tar.gz"
      sha256 "daa60786a4f62d9a32b85c5bea3b24b7072b2a71d291504be00596e9f9953c90"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.115.0/direct-runner-3.115.0-osx-x64.tar.gz"
      sha256 "0823ee268459907cb2bd4aa0ddbc5ef80345146a2b728ddb1f3b41fe803132bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.115.0/direct-runner-3.115.0-linux-arm64.tar.gz"
      sha256 "367b24f6e7b8854e0fa155523d7229cc8d7f756b2b4abe2963620c7810399982"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.115.0/direct-runner-3.115.0-linux-x64.tar.gz"
      sha256 "b18ea8ec92fbd407733a0014c23bf2586de12e25306c1faf0171554cee25c8bb"
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
