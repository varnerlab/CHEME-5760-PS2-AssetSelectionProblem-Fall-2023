function _load(path::String)::DataFrame
    return CSV.read(path, DataFrame);
end

function _jld2(path::String)::Dict{String,Any}
    return load(path);
end

# short circuit the loading of the data -
MyPortfolioDataSet() = _jld2(joinpath(_PATH_TO_DATA, "OHLC-Daily-SP500-5-years-TD-1256.jld2"));
MyFirmMappingDataSet() = _load(joinpath(_PATH_TO_DATA, "SP500-Firm-Mapping-06-22-23.csv"));