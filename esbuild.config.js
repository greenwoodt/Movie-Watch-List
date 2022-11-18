const path = require('path')
const rails = require('esbuild-rails')
import {sassPlugin} from 'esbuild-sass-plugin'

require("esbuild").build({
  entryPoints: ["application.js"],
  bundle: true,
  minify: true,
  outdir: path.join(process.cwd(), "app/assets/builds"),
  absWorkingDir: path.join(process.cwd(), "app/javascript"),
  watch: process.argv.includes("--watch"),
  plugins: [rails(), sassPlugin({
    type: "style"
  })],
}).catch(() => process.exit(1))
