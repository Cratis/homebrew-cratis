class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.3.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.2/cratis-2.3.2-osx-arm64.tar.gz"
      sha256 "07327e6ee0e106c5bc22e2442b45703aa066e773b746acc31f838f15404e8160"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.2/cratis-2.3.2-osx-x64.tar.gz"
      sha256 "087f49b412adeaf4d75be72872425b26f9e1422fc650a3a4b2adf5afac40157c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.2/cratis-2.3.2-linux-arm64.tar.gz"
      sha256 "a9bc68fce37009d37c1b695312df0d63ec6d90d843251e9edebb7ed3cab8b075"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.2/cratis-2.3.2-linux-x64.tar.gz"
      sha256 "04142615c9ed8abe3543eb1d5767c3f1f61da610d2e3c436f16decc9df1997b0"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
