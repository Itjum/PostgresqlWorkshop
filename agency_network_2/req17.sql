UPDATE agency
SET ratings = ratings * 2
WHERE ratings < 5 AND code != 101 AND code != 212 AND code != 213;
