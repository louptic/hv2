require "language/node"

class Api < Formula
  desc "The Optic CLI"
  homepage "https://github.com/opticdev/optic"
  url "https://registry.npmjs.org/@useoptic/cli/-/cli-8.2.7.tgz"
  version "8.2.7"
  sha256 "53a924c4be34b03785068e252a721d9b922290c2b2c62fd8a9138fe9b7dc669f"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
