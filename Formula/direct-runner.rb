class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.145.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.0/direct-runner-3.145.0-osx-arm64.tar.gz"
      sha256 "e5cad7f7239312de82ee7294652e2d94685c8cfd689cd5267077f6f98a14db97"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.0/direct-runner-3.145.0-osx-x64.tar.gz"
      sha256 "2ea47a6579a7b21940920f6287f8bd238f2ed52a920b4ebf1ce14e0bd44139ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.0/direct-runner-3.145.0-linux-arm64.tar.gz"
      sha256 "06626edc3ca236542cb1e1ab0d297fcfc36f8544a86662f9ee8f755e40ee60c5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.0/direct-runner-3.145.0-linux-x64.tar.gz"
      sha256 "ea75231facf8145708b911eccfce7dd91318c78085e3d47fb716075502faf546"
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
