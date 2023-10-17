for ii = 1:1000
    timedwaitbar(ii / 1000)
    q = isprime(ii + 1000:10000);
end