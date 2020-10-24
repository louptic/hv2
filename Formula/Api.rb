require "language/node"

class Api < Formula
  desc "The Optic CLI"
  homepage "https://github.com/opticdev/optic"
  url "https://registry.npmjs.org/@useoptic/cli/-/cli-8.4.1.tgz"
  version "8.4.1"
  sha256 "743fb6fe09cd07e80a5b72a79527e76ae8c0b1838bade0cf54da91df643e09ed"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
