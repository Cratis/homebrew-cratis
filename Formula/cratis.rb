class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.12.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.12.0/cratis-2.12.0-osx-arm64.tar.gz"
      sha256 "a5aeb7995e8e571d7bf5dc10b2ac47e7bfefe0c0be3bd47fdc8d98b25a410647"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.12.0/cratis-2.12.0-osx-x64.tar.gz"
      sha256 "47d1f3c104040ed65276e30b99fbe0d7ba42bd3a9ef00b90dba417cbdb09ed40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.12.0/cratis-2.12.0-linux-arm64.tar.gz"
      sha256 "7da80a8c7ed34da15cad128ea76d526a81f63359c534f6cebdeb93f311a000df"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.12.0/cratis-2.12.0-linux-x64.tar.gz"
      sha256 "7b07d96812d630adcbeb2f5d3713fc62228e632ea8c05cd3584771d644668fc5"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
