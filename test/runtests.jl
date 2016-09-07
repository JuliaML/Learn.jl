using Learn
using Base.Test

passed = true
@testset "Learn" begin
    for pkg in ["LearnBase",
                "Losses",
                "Transformations",
                "Penalties",
                "ObjectiveFunctions",
                "StochasticOptimization",
                "MLMetrics",
                "ValueHistories",
                "MLDataUtils",
                ]
        try
            Pkg.test(pkg)
            @test true
        catch err
            warn(pkg, " had test errors")
            @test false
            # passed = false
        end
    end
end

# @test passed
