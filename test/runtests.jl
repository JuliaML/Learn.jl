using Learn
using Base.Test

failed = []
@testset "Learn" begin
    for pkg in ["LearnBase",
                "LossFunctions",
                "Transformations",
                "PenaltyFunctions",
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
            push!(failed, pkg)
            @test false
        end
    end

    if !isempty(failed)
        warn("The following packages failed the tests:\n    $(join(failed, "\n    "))")
    end
end


# @test passed
