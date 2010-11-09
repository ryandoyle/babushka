module Babushka
  ExternalComponents = %w[
    fancypath/fancypath
  ]

  Components = %w[
    core_patches/array
    core_patches/hash
    core_patches/hashish
    core_patches/integer
    core_patches/io
    core_patches/module
    core_patches/numeric
    core_patches/object
    core_patches/string
    core_patches/symbol
    core_patches/uri
    xml_string
    popen
    shell
    helpers/log_helpers
    helpers/shell_helpers
    helpers/prompt_helpers
    helpers/path_helpers
    helpers/run_helpers
    helpers/suggest_helpers
    helpers/git_helpers
    resource
    lambda_chooser
    ip
    version_str
    version_of
    accepts_list_for
    accepts_value_for
    accepts_block_for
    colorizer
    levenshtein
    structs
    cmdline
    base
    system_definitions
    system_profile
    run_reporter
    bug_reporter
    pkg_helper
    pkg_helpers/base_helper
    pkg_helpers/apt_helper
    pkg_helpers/yum_helper
    pkg_helpers/brew_helper
    pkg_helpers/gem_helper
    pkg_helpers/macports_helper
    pkg_helpers/src_helper
    dep
    dep_pool
    meta_dep_pool
    task
    source
    source_pool
    dep_runner
    dep_runners/base_dep_runner
    dep_runners/meta_dep_runner
    dep_definer
    dep_definers/meta_dep_wrapper
    dep_definers/base_dep_definer
    dep_definers/meta_dep_definer
  ]
end
