
# function is_installed(pkgstr::AbstractString)
#     try
#         Pkg.installed(pkgstr) === nothing ? false: true
#     catch
#         false
#     end
# end

# for pkgstr in ("LearnBase", "Transformations", "ObjectiveFunctions", "Losses", "StochasticOptimization", "MLDataUtils", "MLMetrics")
# 	if !is_installed(pkgstr)
# 		Pkg.clone("https://github.com/JuliaML/$pkgstr.jl")
# 	end
# end

for pkg in ("LearnBase", "Transformations", "ObjectiveFunctions", "Losses", "StochasticOptimization", "MLDataUtils", "MLMetrics")
	try
		avail = Pkg.available(pkg)
		if !isempty(avail)
			# this is a registered package!
			warn("$pkg is registered in METADATA... it shouldn't be in $(@__FILE__)")
		end
	catch
		# install it
		Pkg.clone("https://github.com/JuliaML/$pkg.jl")
		Pkg.build(pkg)
	end
end