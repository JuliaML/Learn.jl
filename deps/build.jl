
for pkg in ("Transformations", "ObjectiveFunctions", "StochasticOptimization", "MLMetrics", "PenaltyFunctions", "LearningStrategies")
    org = pkg == "CatViews" ? "ahwillia" : "JuliaML"
	try
		avail = Pkg.available(pkg)
		if !isempty(avail)
			# this is a registered package!
			warn("$pkg is registered in METADATA... it shouldn't be in $(@__FILE__)")
		end
	catch
		# install it
		Pkg.clone("https://github.com/$org/$pkg.jl")
		Pkg.build(pkg)
	end
end
