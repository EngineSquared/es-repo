package("engine-squared-fork")
    set_kind("library")
    set_homepage("https://github.com/EngineSquared/EngineSquared")
    set_description("Open-source game engine written in C++")
    set_license("GPL-3.0")

    set_urls("https://github.com/MasterLaplace/EngineSquared.git")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)
