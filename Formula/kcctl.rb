class Kcctl < Formula
  desc "kcctl -- A CLI for Apache Kafka Connect"
  homepage "https://github.com/kcctl/kcctl"
  version "1.0.0.Alpha3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.Alpha3/kcctl-1.0.0.Alpha3-linux-x86_64.zip"
    sha256 "ba8b641c2693330b351412361583b2b3fd6890ef0cee25fba8bb82ea4e510e6a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.Alpha3/kcctl-1.0.0.Alpha3-osx-x86_64.zip"
    sha256 "525a87b3b0e91c6fc6af82f2e6f4238e207b9793add7e1577272e7747a1546fb"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kcctl"
  end

  test do
    output = shell_output("#{bin}/kcctl --version")
    assert_match "1.0.0.Alpha3", output
  end
end
