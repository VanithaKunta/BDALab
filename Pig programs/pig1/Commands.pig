 -- cd /home/hduser074/Desktop/pig1
 
 pig -x local
 
-- Load input from the file named input.txt, and call the single
-- field in the record 'line'.
        input4 = load 'input.txt' as (line);

-- to describe the input file
        describe input4;

-- TOKENIZE splits the line into a field for each word.
-- flatten will take the collection of records returned by
-- TOKENIZE and produce a separate record for each one, calling the single
-- field in the record word.

        words = foreach input4 generate flatten(TOKENIZE(line)) as word;

-- to display words
        dump words;
        
-- Now group them together by each word.
        grpd = group words by word;
        
-- to display groups of words
        dump grpd;

-- Count occurences of each word
        cntd = foreach grpd generate group, COUNT(words);

-- Print out the results.
        dump cntd;
 
