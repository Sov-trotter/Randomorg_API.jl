function generateIntegerSequences(n, min, max,replacement)
    url = "https://api.random.org/json-rpc/2/invoke"
    apikey = "f72f3135-206b-4f61-adc0-143012355223"
    headers = (("content-type", "application/json"),
                       ("Accept", "application/json"))

           params = Dict("apiKey"=>apikey, "n"=>n, "min"=>min, "max"=>max, "replacement"=>replacement)
           req = Dict("jsonrpc" => "2.0", "method" =>"generateIntegers", "params" => params, "id"=>0)
           response = HTTP.post(url, headers, JSON.json(req))
           response_json = String(response.body)
           response_parsed = JSON.parse(response_json)
           random_ints = response_parsed["result"]["random"]["data"]
    return(random_ints)
end