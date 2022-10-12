

capitalize_lambda = lambda do |name| 
    puts name.capitalize
end
def capitalize_name(lambda)
    lambda.call("gilberto")
    lambda.call("junior")
end

capitalize_name(capitalize_lambda)