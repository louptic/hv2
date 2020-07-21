require "language/node"

class Api < Formula
  desc "The Optic CLI"
  homepage "https://github.com/opticdev/optic"
  url "https://registry.npmjs.org/@useoptic/cli/-/cli-8.2.8.tgz"
  version "8.2.8"
  sha256 "422efc85f9d84b9762a5d8f0fa1d5ba9775caf9804c94c5a0b03db4dd8a30f1f"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
