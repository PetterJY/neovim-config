local lspconfig = require("lspconfig")

-- JDTLS paths
local home = vim.env.HOME
local jdtls_base = home .. "/.local/share/jdtls"
local jdtls_launcher = vim.fn.glob(jdtls_base .. "/plugins/org.eclipse.equinox.launcher_*.jar")
local jdtls_config = jdtls_base .. "/config_linux"

-- Put workspace data somewhere persistent (per project)
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = home .. "/.cache/jdtls/workspace/" .. project_name

lspconfig.jdtls.setup({
  cmd = {
    "java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xms1g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens", "java.base/java.util=ALL-UNNAMED",
    "--add-opens", "java.base/java.lang=ALL-UNNAMED",

    "-jar", jdtls_launcher,
    "-configuration", jdtls_config,
    "-data", workspace_dir,
  },

  root_dir = lspconfig.util.root_pattern(".git", "mvnw", "gradlew", "pom.xml", "build.gradle", "settings.gradle"),

  -- Optional: helps avoid weird behavior when opening a single file outside a project
  single_file_support = false,

  -- Optional: keep it similar to clangd; you can add your usual capabilities here
  -- capabilities = require("cmp_nvim_lsp").default_capabilities(),
})
