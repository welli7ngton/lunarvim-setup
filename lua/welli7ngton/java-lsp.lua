local lspconfig = require('lspconfig')

lspconfig.jdtls.setup {
  cmd = { 'jdtls' }, -- Certifique-se de que o 'jdtls' esteja no PATH
  filetypes = { 'java' },
  root_dir = lspconfig.util.root_pattern('.git', 'pom.xml', 'gradlew', 'build.gradle'),
  settings = {
    java = {
      home = '/usr/bin/ja',
      jdt = {
        ls = {
          vmargs = {
            '-XX:+UseG1GC',
            '-XX:+UseStringDeduplication',
          },
        },
      },
    },
  },
}
