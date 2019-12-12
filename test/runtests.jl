using Randomorg_API
using Test

@testset "Randomorg_API.jl" begin
    generateIntegerSequences(2, 6, 5, 10,false)
    generateIntegers(5, 1, 10, false)  
    generateDecimalFractions(5, 6,false) 
    generateGaussians(5, 10, 9.1, 3) 
    generateStrings(5, 10, "abcdefghi", false)
    generateUUIDs(5) 
    generateBlobs(5, 1000, "hex")
end
