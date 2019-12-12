function generateIntegers(n, min, max,replacement)
    url = "https://api.random.org/json-rpc/2/invoke"
    apikey = "f72f3135-206b-4f61-adc0-143012355223"
    headers = (("content-type", "application/json"),
                       ("Accept", "application/json"))

           params = Dict("apiKey"=>apikey, "n"=>n, "min"=>min, "max"=>max, "replacement"=>replacement)
           req = Dict("jsonrpc" => "2.0", "method" =>"generateIntegers", "params" => params, "id"=>0)
           response = HTTP.post(url, headers, JSON.json(req))
           response_json = String(response.body)
           response_parsed = JSON.parse(response_json)
           random_op = response_parsed["result"]["random"]["data"]
    return(random_op)
end

function generateIntegerSequences(n,length, min, max,replacement)
    url = "https://api.random.org/json-rpc/2/invoke"
    apikey = "f72f3135-206b-4f61-adc0-143012355223"
    headers = (("content-type", "application/json"),
                       ("Accept", "application/json"))

           params = Dict("apiKey"=>apikey, "n"=>n, "length"=>length, "min"=>min, "max"=>max, "replacement"=>replacement)
           req = Dict("jsonrpc" => "2.0", "method" =>"generateIntegerSequences", "params" => params, "id"=>0)
           response = HTTP.post(url, headers, JSON.json(req))
           response_json = String(response.body)
           response_parsed = JSON.parse(response_json)
           random_op = response_parsed["result"]["random"]["data"]
    return(random_op)
end

function generateDecimalFractions(n, decimalPlaces, replacement)
    url = "https://api.random.org/json-rpc/2/invoke"
    apikey = "f72f3135-206b-4f61-adc0-143012355223"
    headers = (("content-type", "application/json"),
                       ("Accept", "application/json"))

           params = Dict("apiKey"=>apikey, "n"=>n, "decimalPlaces"=>decimalPlaces, "replacement"=>replacement)
           req = Dict("jsonrpc" => "2.0", "method" => "generateDecimalFractions", "params" => params, "id"=>0)
           response = HTTP.post(url, headers, JSON.json(req))
           response_json = String(response.body)
           response_parsed = JSON.parse(response_json)
           random_op = response_parsed["result"]["random"]["data"]
    return(random_op)
end


function generateGaussians(n, mean, standard_dev, significant_digits)
    url = "https://api.random.org/json-rpc/2/invoke"
    apikey = "f72f3135-206b-4f61-adc0-143012355223"
    headers = (("content-type", "application/json"),
                       ("Accept", "application/json"))

           params = Dict("apiKey"=>apikey, "n"=>n, "mean"=>mean, "standardDeviation"=>standard_dev, "significantDigits"=>significant_digits)
           req = Dict("jsonrpc" => "2.0", "method" =>"generateGaussians", "params" => params, "id"=>0)
           response = HTTP.post(url, headers, JSON.json(req))
           response_json = String(response.body)
           response_parsed = JSON.parse(response_json)
           random_op = response_parsed["result"]["random"]["data"]
    return(random_op)
end


function generateStrings(n, length, characters, replacement)
    url = "https://api.random.org/json-rpc/2/invoke"
    apikey = "f72f3135-206b-4f61-adc0-143012355223"
    headers = (("content-type", "application/json"),
                       ("Accept", "application/json"))

           params = Dict("apiKey"=>apikey, "n"=>n, "length"=>length, "characters"=>characters, "replacement"=>replacement)
           req = Dict("jsonrpc" => "2.0", "method" =>"generateStrings", "params" => params, "id"=>0)
           response = HTTP.post(url, headers, JSON.json(req))
           response_json = String(response.body)
           response_parsed = JSON.parse(response_json)
           random_op = response_parsed["result"]["random"]["data"]
    return(random_op)
end

function generateUUIDs(n)
    url = "https://api.random.org/json-rpc/2/invoke"
    apikey = "f72f3135-206b-4f61-adc0-143012355223"
    headers = (("content-type", "application/json"),
                       ("Accept", "application/json"))

           params = Dict("apiKey"=>apikey, "n"=>n)
           req = Dict("jsonrpc" => "2.0", "method" =>"generateUUIDs", "params" => params, "id"=>0)
           response = HTTP.post(url, headers, JSON.json(req))
           response_json = String(response.body)
           response_parsed = JSON.parse(response_json)
           random_op = response_parsed["result"]["random"]["data"]
    return(random_op)
end

function generateBlobs(n, size_in_bits, format)
    url = "https://api.random.org/json-rpc/2/invoke"
    apikey = "f72f3135-206b-4f61-adc0-143012355223"
    headers = (("content-type", "application/json"),
                       ("Accept", "application/json"))

           params = Dict("apiKey"=>apikey, "n"=>n, "size"=>size_in_bits, "format"=>format)
           req = Dict("jsonrpc" => "2.0", "method" =>"generateBlobs", "params" => params, "id"=>0)
           response = HTTP.post(url, headers, JSON.json(req))
           response_json = String(response.body)
           response_parsed = JSON.parse(response_json)
           random_op = response_parsed["result"]["random"]["data"]
    return(random_op)
end


