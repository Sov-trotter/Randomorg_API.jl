module Randomorg_API
using JSON, HTTP
include("Random_numbers.jl")
export generateIntegers, generateIntegerSequences, generateDecimalFractions, generateGaussians, generateStrings, generateUUIDs, generateBlobs

end # module
