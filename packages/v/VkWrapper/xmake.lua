package("VkWrapper")
    set_kind("library")
    set_homepage("https://github.com/EngineSquared/VkWrapper")
    set_description("A C++ wrapper for the Vulkan API")
    set_license("GPL-3.0")

    set_urls("https://github.com/EngineSquared/VkWrapper.git")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)
