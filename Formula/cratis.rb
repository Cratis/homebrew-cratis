class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.18.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.18.0/cratis-2.18.0-osx-arm64.tar.gz"
      sha256 "a23d2ce82ff4dd5069135f7fd325d16556e28edd7b6a2f38babce58fb369c206"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.18.0/cratis-2.18.0-osx-x64.tar.gz"
      sha256 "29ba928b7a56bfc4dd21f34395b3bf0c0b8474484f1ab6b5e84d9e8a186ce621"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.18.0/cratis-2.18.0-linux-arm64.tar.gz"
      sha256 "e4057f6744bd75bfc72ebcea15ce7df16a5f68b189685334588539ab137ad2c3"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.18.0/cratis-2.18.0-linux-x64.tar.gz"
      sha256 "a07c9a207e584ae2cb8a4f0b9a3558f3b7809df1cfa252db7fb96dfb24d952da"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
