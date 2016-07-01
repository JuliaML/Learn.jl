
function is_installed(pkgstr::AbstractString)
    try
        Pkg.installed(pkgstr) === nothing ? false: true
    catch
        false
    end
end

for pkgstr in ("LearnBase", "Transformations", "ObjectiveFunctions", "Losses", "StochasticOptimization", "MLDataUtils", "MLMetrics")
	if !is_installed(pkgstr)
		Pkg.clone("git@github.com:JuliaML/$pkgstr.jl")
	end
end