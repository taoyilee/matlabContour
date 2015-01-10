function colVectorFormat = transColumnVector(rowOrColVectorFormat)
    colVectorFormat  = reshape(rowOrColVectorFormat, length(rowOrColVectorFormat), 1);
end