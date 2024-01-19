# Generated with JReleaser 1.10.0 at 2024-01-19T09:28:55.139680612Z

class Kcctl < Formula
  desc "kcctl -- A CLI for Apache Kafka Connect"
  homepage "https://github.com/kcctl/kcctl"
  version "1.0.0.CR3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR3/kcctl-1.0.0.CR3-linux-x86_64.zip"
    sha256 "b705f39403dd01d735a0240c1ebdf0485b7cb0ae6b85203ff7dc414fa23573a2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR3/kcctl-1.0.0.CR3-osx-aarch_64.zip"
    sha256 "60fc06e88cb323769fd892150e17c0a6180806b6b93a1e0699975789d70ba4bd"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR3/kcctl-1.0.0.CR3-osx-x86_64.zip"
    sha256 "010dae6771c999f56594ef404b6670855e6cd5a85e55bba79386f1289abb79f2"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kcctl" => "kcctl"
  end

  test do
    output = shell_output("#{bin}/kcctl --version")
    assert_match "1.0.0.CR3", output
  end
end
