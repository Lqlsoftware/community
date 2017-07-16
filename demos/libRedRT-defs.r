[[
        make [action! 2 [type [datatype! word!] spec [any-type!]] #[none]] 
        random [action! 1 [{Returns a random value of the same datatype; or shuffles series} value "Maximum value of result (modified when series)" /seed "Restart or randomize" /secure {TBD: Returns a cryptographically secure random number} /only "Pick a random value from a series" return: [any-type!]] [/seed 1 0 /secure 2 0 /only 3 0]] 
        reflect [action! 2 [{Returns internal details about a value via reflection} value [any-type!] field [word!] {spec, body, words, etc. Each datatype defines its own reflectors}] #[none]] 
        to [action! 2 ["Converts to a specified datatype" type [any-type!] "The datatype or example value" spec [any-type!] "The attributes of the new value"] #[none]] 
        form [action! 1 [{Returns a user-friendly string representation of a value} value [any-type!] /part "Limit the length of the result" limit [integer!] return: [string!]] [/part 1 1]] 
        mold [action! 1 [{Returns a source format string representation of a value} value [any-type!] /only "Exclude outer brackets if value is a block" /all "TBD: Return value in loadable format" /flat "TBD: Exclude all indentation" /part "Limit the length of the result" limit [integer!] return: [string!]] [/only 1 0 /all 2 0 /flat 3 0 /part 4 1]] 
        modify [action! 3 ["Change mode for target aggregate value" target [object! series!] field [word!] value [any-type!] /case "Perform a case-sensitive lookup" return: [map! file!]] [/case 1 0]] 
        absolute [action! 1 ["Returns the non-negative value" value [number! pair! time!] return: [number! pair! time!]] #[none]] 
        add [action! 2 ["Returns the sum of the two values" value1 [number! char! pair! tuple! vector! time!] value2 [number! char! pair! tuple! vector! time!] return: [number! char! pair! tuple! vector! time!]] #[none]] 
        divide [action! 2 ["Returns the quotient of two values" value1 [number! char! pair! tuple! vector! time!] "The dividend (numerator)" value2 [number! char! pair! tuple! vector! time!] "The divisor (denominator)" return: [number! char! pair! tuple! vector! time!]] #[none]] 
        multiply [action! 2 ["Returns the product of two values" value1 [number! char! pair! tuple! vector! time!] value2 [number! char! pair! tuple! vector! time!] return: [number! char! pair! tuple! vector! time!]] #[none]] 
        negate [action! 1 ["Returns the opposite (additive inverse) value" number [number! bitset! pair! time!] return: [number! bitset! pair! time!]] #[none]] 
        power [action! 2 [{Returns a number raised to a given power (exponent)} number [number!] "Base value" exponent [number!] "The power (index) to raise the base value by" return: [number!]] #[none]] 
        remainder [action! 2 [{Returns what is left over when one value is divided by another} value1 [number! char! pair! tuple! vector! time!] value2 [number! char! pair! tuple! vector! time!] return: [number! char! pair! tuple! vector! time!]] #[none]] 
        round [action! 1 [{Returns the nearest integer. Halves round up (away from zero) by default} n [number! time! pair!] /to "Return the nearest multiple of the scale parameter" scale [number!] "Must be a non-zero value" /even "Halves round toward even results" /down {Round toward zero, ignoring discarded digits. (truncate)} /half-down "Halves round toward zero" /floor "Round in negative direction" /ceiling "Round in positive direction" /half-ceiling "Halves round in positive direction"] [/to 1 1 /even 2 0 /down 3 0 /half-down 4 0 /floor 5 0 /ceiling 6 0 /half-ceiling 7 0]] 
        subtract [action! 2 ["Returns the difference between two values" value1 [number! char! pair! tuple! vector! time!] value2 [number! char! pair! tuple! vector! time!] return: [number! char! pair! tuple! vector! time!]] #[none]] 
        even? [action! 1 [{Returns true if the number is evenly divisible by 2} number [number! char!] return: [number! char!]] #[none]] 
        odd? [action! 1 [{Returns true if the number has a remainder of 1 when divided by 2} number [number! char!] return: [number! char!]] #[none]] 
        and~ [action! 2 ["Returns the first value ANDed with the second" value1 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] value2 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] return: [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!]] #[none]] 
        complement [action! 1 [{Returns the opposite (complementing) value of the input value} value [logic! integer! bitset! typeset! binary!] return: [logic! integer! bitset! typeset! binary!]] #[none]] 
        or~ [action! 2 ["Returns the first value ORed with the second" value1 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] value2 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] return: [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!]] #[none]] 
        xor~ [action! 2 [{Returns the first value exclusive ORed with the second} value1 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] value2 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] return: [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!]] #[none]] 
        append [action! 2 [{Inserts value(s) at series tail; returns series head} series [series! bitset! map!] value [any-type!] /part "Limit the number of values inserted" length [number! series!] /only {Insert block types as single values (overrides /part)} /dup "Duplicate the inserted values" count [number!] return: [series! bitset! map!]] [/part 1 1 /only 2 0 /dup 3 1]] 
        at [action! 2 ["Returns a series at a given index" series [series!] index [integer! pair!] return: [series!]] #[none]] 
        back [action! 1 ["Returns a series at the previous index" series [series!] return: [series!]] #[none]] 
        change [action! 2 [{Changes a value in a series and returns the series after the change} series [series!] "Series at point to change" value [any-type!] "The new value" /part {Limits the amount to change to a given length or position} range [number! series!] /only "Changes a series as a series." /dup "Duplicates the change a specified number of times" count [number!]] [/part 1 1 /only 2 0 /dup 3 1]] 
        clear [action! 1 [{Removes series values from current index to tail; returns new tail} series [series! bitset! map! none!] return: [series! bitset! map! none!]] #[none]] 
        copy [action! 1 ["Returns a copy of a non-scalar value" value [series! any-object! bitset! map!] /part "Limit the length of the result" length [number! series! pair!] /deep "Copy nested values" /types "Copy only specific types of non-scalar values" kind [datatype!] return: [series! any-object! bitset! map!]] [/part 1 1 /deep 2 0 /types 3 1]] 
        find [action! 2 ["Returns the series where a value is found, or NONE" series [series! bitset! typeset! any-object! map! none!] value [any-type!] /part "Limit the length of the search" length [number! series!] /only "Treat a series search value as a single value" /case "Perform a case-sensitive search" /same {Use "same?" as comparator} /any "TBD: Use * and ? wildcards in string searches" /with "TBD: Use custom wildcards in place of * and ?" wild [string!] /skip "Treat the series as fixed size records" size [integer!] /last "Find the last occurrence of value, from the tail" /reverse {Find the last occurrence of value, from the current index} /tail {Return the tail of the match found, rather than the head} /match {Match at current index only and return tail of match}] [/part 1 1 /only 2 0 /case 3 0 /same 4 0 /any 5 0 /with 6 1 /skip 7 1 /last 8 0 /reverse 9 0 /tail 10 0 /match 11 0]] 
        head [action! 1 ["Returns a series at its first index" series [series!] return: [series!]] #[none]] 
        head? [action! 1 ["Returns true if a series is at its first index" series [series!] return: [logic!]] #[none]] 
        index? [action! 1 [{Returns the current index of series relative to the head, or of word in a context} series [series! word!] return: [integer!]] #[none]] 
        insert [action! 2 [{Inserts value(s) at series index; returns series past the insertion} series [series! bitset! map!] value [any-type!] /part "Limit the number of values inserted" length [number! series!] /only {Insert block types as single values (overrides /part)} /dup "Duplicate the inserted values" count [number!] return: [series! bitset! map!]] [/part 1 1 /only 2 0 /dup 3 1]] 
        length? [action! 1 [{Returns the number of values in the series, from the current index to the tail} series [series! bitset! map! tuple! none!] return: [integer! none!]] #[none]] 
        move [action! 2 [{Moves one or more elements from one series to another position or series} origin [series!] target [series!] /part "Limit the number of values inserted" length [integer!] return: [series!]] [/part 1 1]] 
        next [action! 1 ["Returns a series at the next index" series [series!] return: [series!]] #[none]] 
        pick [action! 2 ["Returns the series value at a given index" series [series! bitset! pair! tuple! time!] index [scalar! any-string! any-word! block! logic! time!] return: [any-type!]] #[none]] 
        poke [action! 3 [{Replaces the series value at a given index, and returns the new value} series [series! bitset!] index [scalar! any-string! any-word! block! logic!] value [any-type!] return: [series! bitset!]] #[none]] 
        put [action! 3 [{Replaces the value following a key, and returns the new value} series [series! map! object!] key [scalar! any-string! any-word!] value [any-type!] /case "Perform a case-sensitive search" return: [series! map! object!]] [/case 1 0]] 
        remove [action! 1 [{Returns the series at the same index after removing a value} series [series! bitset! none!] /part {Removes a number of values, or values up to the given series index} length [number! char! series!] return: [series! bitset! none!]] [/part 1 1]] 
        reverse [action! 1 [{Reverses the order of elements; returns at same position} series [series! pair! tuple!] /part "Limits to a given length or position" length [number! series!] return: [series! pair! tuple!]] [/part 1 1]] 
        select [action! 2 [{Find a value in a series and return the next value, or NONE} series [series! any-object! map! none!] value [any-type!] /part "Limit the length of the search" length [number! series!] /only "Treat a series search value as a single value" /case "Perform a case-sensitive search" /same {Use "same?" as comparator} /any "TBD: Use * and ? wildcards in string searches" /with "TBD: Use custom wildcards in place of * and ?" wild [string!] /skip "Treat the series as fixed size records" size [integer!] /last "Find the last occurrence of value, from the tail" /reverse {Find the last occurrence of value, from the current index} return: [any-type!]] [/part 1 1 /only 2 0 /case 3 0 /same 4 0 /any 5 0 /with 6 1 /skip 7 1 /last 8 0 /reverse 9 0]] 
        sort [action! 1 [{Sorts a series (modified); default sort order is ascending} series [series!] /case "Perform a case-sensitive sort" /skip "Treat the series as fixed size records" size [integer!] /compare "Comparator offset, block or function" comparator [integer! block! any-function!] /part "Sort only part of a series" length [number! series!] /all "Compare all fields" /reverse "Reverse sort order" /stable "Stable sorting" return: [series!]] [/case 1 0 /skip 2 1 /compare 3 1 /part 4 1 /all 5 0 /reverse 6 0 /stable 7 0]] 
        skip [action! 2 ["Returns the series relative to the current index" series [series!] offset [integer! pair!] return: [series!]] #[none]] 
        swap [action! 2 [{Swaps elements between two series or the same series} series1 [series!] series2 [series!] return: [series!]] #[none]] 
        tail [action! 1 ["Returns a series at the index after its last value" series [series!] return: [series!]] #[none]] 
        tail? [action! 1 ["Returns true if a series is past its last value" series [series!] return: [logic!]] #[none]] 
        take [action! 1 ["Removes and returns one or more elements" series [series! none!] /part "Specifies a length or end position" length [number! series!] /deep "Copy nested values" /last "Take it from the tail end"] [/part 1 1 /deep 2 0 /last 3 0]] 
        trim [action! 1 [{Removes space from a string or NONE from a block or object} series [series! object! error! map!] /head "Removes only from the head" /tail "Removes only from the tail" /auto "Auto indents lines relative to first line" /lines "Removes all line breaks and extra spaces" /all "Removes all whitespace" /with "Same as /all, but removes characters in 'str'" str [char! string! integer!]] [/head 1 0 /tail 2 0 /auto 3 0 /lines 4 0 /all 5 0 /with 6 1]] 
        read [action! 1 ["Read from a file, URL, or other port" source [file! url!] /part {Partial read a given number of units (source relative)} length [number!] /seek "Read from a specific position (source relative)" index [number!] /binary "Preserves contents exactly" /lines "Convert to block of strings" /info /as {Read with the specified encoding, default is 'UTF-8} encoding [word!]] [/part 1 1 /seek 2 1 /binary 3 0 /lines 4 0 /info 5 0 /as 6 1]] 
        write [action! 2 ["Writes to a file, URL, or other port" destination [file! url!] data [any-type!] /binary "Preserves contents exactly" /lines "Write each value in a block as a separate line" /info /append "Write data at end of file" /part "Partial write a given number of units" length [number!] /seek "Write at a specific position" index [number!] /allow "Specifies protection attributes" access [block!] /as {Write with the specified encoding, default is 'UTF-8} encoding [word!]] [/binary 1 0 /lines 2 0 /info 3 0 /append 4 0 /part 5 1 /seek 6 1 /allow 7 1 /as 8 1]] 
        if [intrinsic! 2 [{If conditional expression is TRUE, evaluate block; else return NONE} cond [any-type!] then-blk [block!]] #[none]] 
        unless [intrinsic! 2 [{If conditional expression is not TRUE, evaluate block; else return NONE} cond [any-type!] then-blk [block!]] #[none]] 
        either [intrinsic! 3 [{If conditional expression is true, eval true-block; else eval false-blk} cond [any-type!] true-blk [block!] false-blk [block!]] #[none]] 
        any [intrinsic! 1 ["Evaluates, returning at the first that is true" conds [block!]] #[none]] 
        all [intrinsic! 1 ["Evaluates, returning at the first that is not true" conds [block!]] #[none]] 
        while [intrinsic! 2 [{Evaluates body as long as condition block returns TRUE} cond [block!] "Condition block to evaluate on each iteration" body [block!] "Block to evaluate on each iteration"] #[none]] 
        until [intrinsic! 1 ["Evaluates body until it is TRUE" body [block!]] #[none]] 
        loop [intrinsic! 2 ["Evaluates body a number of times" count [integer!] body [block!]] #[none]] 
        repeat [intrinsic! 3 [{Evaluates body a number of times, tracking iteration count} 'word [word!] "Iteration counter; not local to loop" value [integer!] "Number of times to evaluate body" body [block!]] #[none]] 
        forever [intrinsic! 1 ["Evaluates body repeatedly forever" body [block!]] #[none]] 
        foreach [intrinsic! 3 ["Evaluates body for each value in a series" 'word [block! word!] "Word, or words, to set on each iteration" series [series!] body [block!]] #[none]] 
        forall [intrinsic! 2 ["Evaluates body for all values in a series" 'word [word!] "Word referring to series to iterate over" body [block!]] #[none]] 
        remove-each [intrinsic! 3 ["Removes values for each block that returns true" 'word [block! word!] "Word or block of words to set each time" data [series!] "The series to traverse (modified)" body [block!] "Block to evaluate (return TRUE to remove)"] #[none]] 
        func [intrinsic! 2 ["Defines a function with a given spec and body" spec [block!] body [block!]] #[none]] 
        function [intrinsic! 2 [{Defines a function, making all words found in body local} spec [block!] body [block!] /extern "Exclude words that follow this refinement"] [/extern 1 0]] 
        does [intrinsic! 1 [{Defines a function with no arguments or local variables} body [block!]] #[none]] 
        has [intrinsic! 2 [{Defines a function with local variables, but no arguments} vars [block!] body [block!]] #[none]] 
        switch [intrinsic! 2 [{Evaluates the first block following the value found in cases} value [any-type!] "The value to match" cases [block!] /default {Specify a default block, if value is not found in cases} case [block!] "Default block to evaluate"] [/default 1 1]] 
        case [intrinsic! 1 [{Evaluates the block following the first true condition} cases [block!] "Block of condition-block pairs" /all {Test all conditions, evaluating the block following each true condition}] [/all 1 0]] 
        do [native! 1 [{Evaluates a value, returning the last evaluation result} value [any-type!] /expand "Expand directives before evaluation" /args {If value is a script, this will set its system/script/args} arg "Args passed to a script (normally a string)" /next {Do next expression only, return it, update block word} position [word!] "Word updated with new block position"] [/expand 1 0 /args 2 1 /next 3 1]] 
        reduce [intrinsic! 1 [{Returns a copy of a block, evaluating all expressions} value [any-type!] /into {Put results in out block, instead of creating a new block} out [any-block!] "Target block for results, when /into is used"] [/into 1 1]] 
        compose [native! 1 ["Returns a copy of a block, evaluating only parens" value /deep "Compose nested blocks" /only {Compose nested blocks as blocks containing their values} /into {Put results in out block, instead of creating a new block} out [any-block!] "Target block for results, when /into is used"] [/deep 1 0 /only 2 0 /into 3 1]] 
        get [intrinsic! 1 ["Returns the value a word refers to" word [path! word!] /any {If word has no value, return UNSET rather than causing an error} /case "Use case-sensitive comparison (path only)" return: [any-type!]] [/any 1 0 /case 2 0]] 
        set [intrinsic! 2 ["Sets the value(s) one or more words refer to" word [any-word! block! map! object! path!] "Word, object, map or block of words to set" value [any-type!] "Value or block of values to assign to words" /any {Allow UNSET as a value rather than causing an error} /case "Use case-sensitive comparison (path only)" /only {Block or object value argument is set as a single value} /some {None values in a block or object value argument, are not set} return: [any-type!]] [/any 1 0 /case 2 0 /only 3 0 /some 4 0]] 
        print [native! 1 ["Outputs a value followed by a newline" value [any-type!]] #[none]] 
        prin [native! 1 ["Outputs a value" value [any-type!]] #[none]] 
        equal? [native! 2 ["Returns TRUE if two values are equal" value1 [any-type!] value2 [any-type!]] #[none]] 
        not-equal? [native! 2 ["Returns TRUE if two values are not equal" value1 [any-type!] value2 [any-type!]] #[none]] 
        strict-equal? [native! 2 [{Returns TRUE if two values are equal, and also the same datatype} value1 [any-type!] value2 [any-type!]] #[none]] 
        lesser? [native! 2 [{Returns TRUE if the first value is less than the second} value1 [any-type!] value2 [any-type!]] #[none]] 
        greater? [native! 2 [{Returns TRUE if the first value is greater than the second} value1 [any-type!] value2 [any-type!]] #[none]] 
        lesser-or-equal? [native! 2 [{Returns TRUE if the first value is less than or equal to the second} value1 [any-type!] value2 [any-type!]] #[none]] 
        greater-or-equal? [native! 2 [{Returns TRUE if the first value is greater than or equal to the second} value1 [any-type!] value2 [any-type!]] #[none]] 
        same? [native! 2 ["Returns TRUE if two values have the same identity" value1 [any-type!] value2 [any-type!]] #[none]] 
        not [native! 1 ["Returns the boolean complement of a value" value [any-type!]] #[none]] 
        type? [native! 1 ["Returns the datatype of a value" value [any-type!] /word "Return a word value, rather than a datatype value"] [/word 1 0]] 
        stats [native! 0 ["Returns interpreter statistics" /show "TBD:" /info "Output formatted results" return: [integer! block!]] [/show 1 0 /info 2 0]] 
        bind [native! 2 [word [any-word! block!] context [any-object! any-word! function!] /copy return: [block! any-word!]] [/copy 1 0]] 
        in [native! 2 [object [any-object!] word [any-word!]] #[none]] 
        parse [native! 2 [input [any-block! any-string! binary!] rules [block!] /case /part length [number! series!] /trace callback [function! [
                        event [word!] 
                        match? [logic!] 
                        rule [block!] 
                        input [series!] 
                        stack [block!] 
                        return: [logic!]
                    ]] return: [logic! block!]] [/case 1 0 /part 2 1 /trace 3 1]] 
        union [native! 2 ["Returns the union of two data sets" set1 [bitset! block! hash! string! typeset!] set2 [bitset! block! hash! string! typeset!] /case "Use case-sensitive comparison" /skip "Treat the series as fixed size records" size [integer!] return: [block! hash! string! bitset! typeset!]] [/case 1 0 /skip 2 1]] 
        unique [native! 1 ["Returns the data set with duplicates removed" set [block! hash! string!] /case "Use case-sensitive comparison" /skip "Treat the series as fixed size records" size [integer!] return: [block! hash! string!]] [/case 1 0 /skip 2 1]] 
        intersect [native! 2 ["Returns the intersection of two data sets" set1 [bitset! block! hash! string! typeset!] set2 [bitset! block! hash! string! typeset!] /case "Use case-sensitive comparison" /skip "Treat the series as fixed size records" size [integer!] return: [block! hash! string! bitset! typeset!]] [/case 1 0 /skip 2 1]] 
        difference [native! 2 ["Returns the special difference of two data sets" set1 [bitset! block! hash! string! typeset!] set2 [bitset! block! hash! string! typeset!] /case "Use case-sensitive comparison" /skip "Treat the series as fixed size records" size [integer!] return: [block! hash! string! bitset! typeset!]] [/case 1 0 /skip 2 1]] 
        exclude [native! 2 [{Returns the first data set less the second data set} set1 [bitset! block! hash! string! typeset!] set2 [bitset! block! hash! string! typeset!] /case "Use case-sensitive comparison" /skip "Treat the series as fixed size records" size [integer!] return: [block! hash! string! bitset! typeset!]] [/case 1 0 /skip 2 1]] 
        complement? [native! 1 ["Returns TRUE if the bitset is complemented" bits [bitset!]] #[none]] 
        dehex [native! 1 ["Converts URL-style hex encoded (%xx) strings" value [file! string!]] #[none]] 
        negative? [native! 1 ["Returns TRUE if the number is negative" number [number! time!]] #[none]] 
        positive? [native! 1 ["Returns TRUE if the number is positive" number [number! time!]] #[none]] 
        max [native! 2 ["Returns the greater of the two values" value1 [char! number! series! time!] value2 [char! number! series! time!]] #[none]] 
        min [native! 2 ["Returns the lesser of the two values" value1 [char! number! series! time!] value2 [char! number! series! time!]] #[none]] 
        shift [native! 2 [{Perform a bit shift operation. Right shift (decreasing) by default} data [integer!] bits [integer!] /left "Shift bits to the left (increasing)" /logical "Use logical shift (unsigned, fill with zero)" return: [integer!]] [/left 1 0 /logical 2 0]] 
        to-hex [native! 1 [{Converts numeric value to a hex issue! datatype (with leading # and 0's)} value [integer!] /size "Specify number of hex digits in result" length [integer!] return: [issue!]] [/size 1 1]] 
        sine [native! 1 ["Returns the trigonometric sine" angle [number!] /radians "Angle is specified in radians" return: [float!]] [/radians 1 0]] 
        cosine [native! 1 ["Returns the trigonometric cosine" angle [number!] /radians "Angle is specified in radians" return: [float!]] [/radians 1 0]] 
        tangent [native! 1 ["Returns the trigonometric tangent" angle [number!] /radians "Angle is specified in radians" return: [float!]] [/radians 1 0]] 
        arcsine [native! 1 [{Returns the trigonometric arcsine (in degrees by default)} angle [number!] /radians "Angle is specified in radians" return: [float!]] [/radians 1 0]] 
        arccosine [native! 1 [{Returns the trigonometric arccosine (in degrees by default)} angle [number!] /radians "Angle is specified in radians" return: [float!]] [/radians 1 0]] 
        arctangent [native! 1 [{Returns the trigonometric arctangent (in degrees by default)} angle [number!] /radians "Angle is specified in radians" return: [float!]] [/radians 1 0]] 
        arctangent2 [native! 2 [{Returns the angle of the point y/x in radians, when measured counterclockwise from a circle's x axis (where 0x0 represents the center of the circle). The return value is between -pi and +pi.} y [number!] x [number!] return: [float!]] #[none]] 
        NaN? [native! 1 ["Returns TRUE if the number is Not-a-Number" value [number!] return: [logic!]] #[none]] 
        zero? [native! 1 ["Returns TRUE if the value is zero" value [char! number! pair! time! tuple!] return: [logic!]] #[none]] 
        log-2 [native! 1 ["Return the base-2 logarithm" value [number!] return: [float!]] #[none]] 
        log-10 [native! 1 ["Returns the base-10 logarithm" value [number!] return: [float!]] #[none]] 
        log-e [native! 1 [{Returns the natural (base-E) logarithm of the given value} value [number!] return: [float!]] #[none]] 
        exp [native! 1 [{Raises E (the base of natural logarithm) to the power specified} value [number!] return: [float!]] #[none]] 
        square-root [native! 1 ["Returns the square root of a number" value [number!] return: [float!]] #[none]] 
        construct [intrinsic! 1 [block [block!] /with object [object!] /only] [/with 1 1 /only 2 0]] 
        value? [native! 1 ["Returns TRUE if the word has a value" value return: [logic!]] #[none]] 
        try [intrinsic! 1 [{Tries to DO a block and returns its value or an error} block [block!] /all {Catch also BREAK, CONTINUE, RETURN, EXIT and THROW exceptions}] [/all 1 0]] 
        uppercase [native! 1 ["Converts string of characters to uppercase" string [any-string! char!] /part "Limits to a given length or position" limit [any-string! number!] return: [any-string! char!]] [/part 1 1]] 
        lowercase [native! 1 ["Converts string of characters to lowercase" string [any-string! char!] /part "Limits to a given length or position" limit [any-string! number!] return: [any-string! char!]] [/part 1 1]] 
        as-pair [native! 2 ["Combine X and Y values into a pair" x [float! integer!] y [float! integer!]] #[none]] 
        break [intrinsic! 0 [{Breaks out of a loop, while, until, repeat, foreach, etc} /return "Forces the loop function to return a value" value [any-type!]] [/return 1 1]] 
        continue [intrinsic! 0 ["Throws control back to top of loop"] #[none]] 
        exit [intrinsic! 0 ["Exits a function, returning no value"] #[none]] 
        return [intrinsic! 1 ["Returns a value from a function" value [any-type!]] #[none]] 
        throw [native! 1 ["Throws control back to a previous catch" value [any-type!] "Value returned from catch" /name "Throws to a named catch" word [word!]] [/name 1 1]] 
        catch [native! 1 ["Catches a throw from a block and returns its value" block [block!] "Block to evaluate" /name "Catches a named throw" word [block! word!] "One or more names"] [/name 1 1]] 
        extend [native! 2 [{Extend an object or map value with list of key and value pairs} obj [map! object!] spec [block! hash! map!] /case "Use case-sensitive comparison"] [/case 1 0]] 
        debase [native! 1 [{Decodes binary-coded string (BASE-64 default) to binary value} value [string!] "The string to decode" /base "Binary base to use" base-value [integer!] "The base to convert from: 64, 16, or 2"] [/base 1 1]] 
        enbase [native! 1 [{Encodes a string into a binary-coded string (BASE-64 default)} value [binary! string!] "If string, will be UTF8 encoded" /base "Binary base to use" base-value [integer!] "The base to convert from: 64, 16, or 2"] [/base 1 1]] 
        to-local-file [native! 1 [{Converts a Red file path to the local system file path} path [file! string!] /full {Prepends current dir for full path (for relative paths only)} return: [string!]] [/full 1 0]] 
        wait [native! 1 ["Waits for a duration in seconds" value [block! none! number!] /all "Returns all in a block"] [/all 1 0]] 
        checksum [native! 2 ["Computes a checksum, CRC, hash, or HMAC" data [binary! file! string!] method [word!] "MD5 SHA1 SHA256 SHA384 SHA512 CRC32 TCP hash" /with {Extra value for HMAC key or hash table size; not compatible with TCP/CRC32 methods} spec [any-string! binary! integer!] {String or binary for MD5/SHA* HMAC key, integer for hash table size} return: [integer! binary!]] [/with 1 1]] 
        unset [native! 1 ["Unsets the value of a word in its current context" word [block! word!] "Word or block of words"] #[none]] 
        new-line [native! 2 [{Sets or clears the new-line marker within a block or paren} position [block! paren!] "Position to change marker (modified)" value "Set TRUE for newline" /all "Set/clear marker to end of series" /skip {Set/clear marker periodically to the end of the series} size [integer!] return: [block! paren!]] [/all 1 0 /skip 2 1]] 
        new-line? [native! 1 [{Returns the state of the new-line marker within a block or paren} position [block! paren!] "Position to change marker" return: [block! paren!]] #[none]] 
        context? [native! 1 ["Returns the context in which a word is bound" word [any-word!] "Word to check" return: [object! function! none!]] #[none]] 
        set-env [native! 2 [{Sets the value of an operating system environment variable (for current process)} var [any-string! any-word!] "Variable to set" value [none! string!] "Value to set, or NONE to unset it"] #[none]] 
        get-env [native! 1 [{Returns the value of an OS environment variable (for current process)} var [any-string! any-word!] "Variable to get" return: [string! none!]] #[none]] 
        list-env [native! 0 [{Returns a map of OS environment variables (for current process)} return: [map!]] #[none]] 
        now [native! 0 ["Returns date and time" /year "Returns year only" /month "Returns month only" /day "Returns day of the month only" /time "Returns time only" /zone "Returns time zone offset from UCT (GMT) only" /date "Returns date only" /weekday {Returns day of the week as integer (Monday is day 1)} /yearday "Returns day of the year (Julian)" /precise "High precision time" /utc "Universal time (no zone)" return: [time!]] [/year 1 0 /month 2 0 /day 3 0 /time 4 0 /zone 5 0 /date 6 0 /weekday 7 0 /yearday 8 0 /precise 9 0 /utc 10 0]] 
        sign? [native! 1 [{Returns sign of N as 1, 0, or -1 (to use as a multiplier)} number [number! time!]] #[none]] 
        as [native! 2 [{Coerce a series into a compatible datatype without copying it} type [any-path! any-string! block! datatype! paren!] "The datatype or example value" spec [any-path! any-string! block! paren!] "The series to coerce"] #[none]] 
        call [native! 1 ["Executes a shell command to run another process" cmd [file! string!] "A shell command or an executable file" /wait "Runs command and waits for exit" /show {Force the display of system's shell window (Windows only)} /console {Runs command with I/O redirected to console (CLI console only at present)} /shell "Forces command to be run from shell" /input in [binary! file! string!] "Redirects in to stdin" /output out [binary! file! string!] "Redirects stdout to out" /error err [binary! file! string!] "Redirects stderr to err" return: [integer!] "0 if success, -1 if error, or a process ID"] [/wait 1 0 /show 2 0 /console 3 0 /shell 4 0 /input 5 1 /output 6 1 /error 7 1]] 
        quit-return [routine! 1 [
                status #[block![2 1x1 integer!]3]
            ] #[none]] 
        set-quiet [routine! 2 [
                {Set an object's field to a value without triggering object's events} 
                word #[block![2 1x1 red-word!]3] 
                value #[block![2 1x1 red/cell!]3]
            ] #[none]] 
        browse [routine! 1 [
                "Open web browser to a URL" 
                url #[block![2 1x1 red-url!]3]
            ] #[none]] 
        shift-right [routine! 2 [data #[block![2 1x1 integer!]3] bits #[block![2 1x1 integer!]3]] #[none]] 
        shift-left [routine! 2 [data #[block![2 1x1 integer!]3] bits #[block![2 1x1 integer!]3]] #[none]] 
        shift-logical [routine! 2 [data #[block![2 1x1 integer!]3] bits #[block![2 1x1 integer!]3]] #[none]] 
        last-lf? [routine! 0 [/local bool #[block![2 1x1 red-logic!]3]] #[none]] 
        get-current-dir [routine! 0 [] #[none]] 
        set-current-dir [routine! 1 [path #[block![2 1x1 red-string!]3] /local dir #[block![2 1x1 red-file!]3]] #[none]] 
        create-dir [routine! 1 [path #[block![2 1x1 red-file!]3]] #[none]] 
        exists? [routine! 1 [path #[block![2 1x1 red-file!]3] return: #[block![2 1x1 logic!]3]] #[none]] 
        as-color [routine! 3 [
                r #[block![2 1x1 integer!]3] 
                g #[block![2 1x1 integer!]3] 
                b #[block![2 1x1 integer!]3] 
                /local 
                arr1 #[block![2 1x1 integer!]3]
            ] #[none]] 
        as-ipv4 [routine! 4 [
                a #[block![2 1x1 integer!]3] 
                b #[block![2 1x1 integer!]3] 
                c #[block![2 1x1 integer!]3] 
                d #[block![2 1x1 integer!]3] 
                /local 
                arr1 #[block![2 1x1 integer!]3]
            ] #[none]] 
        as-rgba [routine! 4 [
                a #[block![2 1x1 integer!]3] 
                b #[block![2 1x1 integer!]3] 
                c #[block![2 1x1 integer!]3] 
                d #[block![2 1x1 integer!]3] 
                /local 
                arr1 #[block![2 1x1 integer!]3]
            ] #[none]] 
        write-stdout [routine! 1 [str #[block![2 1x1 red-string!]3]] #[none]] 
        routine [function! 2 [spec [block!] body [block!]] #[none]] 
        also [function! 2 [
                {Returns the first value, but also evaluates the second.} 
                value1 [any-type!] 
                value2 [any-type!]
            ] #[none]] 
        attempt [function! 1 [
                {Tries to evaluate a block and returns result or NONE on error} 
                value [block!] 
                /safer "Capture all possible errors and exceptions"
            ] [
                /safer 1 0
            ]] 
        comment [function! 1 [value] #[none]] 
        quit [function! 0 [
                "Stops evaluation and exits the program" 
                /return status [integer!] "Return an exit status"
            ] [
                /return 1 1
            ]] 
        empty? [function! 1 [
                "Returns true if a series is at its tail" 
                series [none! series!] 
                return: [logic!]
            ] #[none]] 
        ?? [function! 1 [
                "Prints a word and the value it refers to (molded)" 
                'value [word!]
            ] #[none]] 
        probe [function! 1 [
                "Returns a value after printing its molded form" 
                value [any-type!]
            ] #[none]] 
        quote [function! 1 [
                :value
            ] #[none]] 
        first [function! 1 ["Returns the first value in a series" s [pair! series! time! tuple!]] #[none]] 
        second [function! 1 ["Returns the second value in a series" s [pair! series! time! tuple!]] #[none]] 
        third [function! 1 ["Returns the third value in a series" s [series! time! tuple!]] #[none]] 
        fourth [function! 1 ["Returns the fourth value in a series" s [series! tuple!]] #[none]] 
        fifth [function! 1 ["Returns the fifth value in a series" s [series! tuple!]] #[none]] 
        last [function! 1 ["Returns the last value in a series" s [series!]] #[none]] 
        spec-of [function! 1 [{Returns the spec of a value that supports reflection} value] #[none]] 
        body-of [function! 1 [{Returns the body of a value that supports reflection} value] #[none]] 
        words-of [function! 1 [{Returns the list of words of a value that supports reflection} value] #[none]] 
        class-of [function! 1 ["Returns the class ID of an object" value] #[none]] 
        values-of [function! 1 [{Returns the list of values of a value that supports reflection} value] #[none]] 
        bitset? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        binary? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        block? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        char? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        email? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        file? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        float? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        get-path? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        get-word? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        hash? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        integer? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        issue? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        lit-path? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        lit-word? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        logic? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        map? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        native? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        none? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        pair? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        paren? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        path? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        percent? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        refinement? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        set-path? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        set-word? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        string? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        tag? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        time? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        typeset? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        tuple? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        unset? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        url? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        word? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        image? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        handle? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        error? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        action? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        datatype? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        function? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        object? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        op? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        routine? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        vector? [function! 1 
            ["Returns true if the value is this type" value [any-type!]] #[none]
        ] 
        any-list? [function! 1 ["Returns true if the value is any type of any-list" value [any-type!]] #[none]] 
        any-block? [function! 1 ["Returns true if the value is any type of any-block" value [any-type!]] #[none]] 
        any-function? [function! 1 [{Returns true if the value is any type of any-function} value [any-type!]] #[none]] 
        any-object? [function! 1 [{Returns true if the value is any type of any-object} value [any-type!]] #[none]] 
        any-path? [function! 1 ["Returns true if the value is any type of any-path" value [any-type!]] #[none]] 
        any-string? [function! 1 [{Returns true if the value is any type of any-string} value [any-type!]] #[none]] 
        any-word? [function! 1 ["Returns true if the value is any type of any-word" value [any-type!]] #[none]] 
        series? [function! 1 ["Returns true if the value is any type of series" value [any-type!]] #[none]] 
        number? [function! 1 ["Returns true if the value is any type of number" value [any-type!]] #[none]] 
        immediate? [function! 1 ["Returns true if the value is any type of immediate" value [any-type!]] #[none]] 
        scalar? [function! 1 ["Returns true if the value is any type of scalar" value [any-type!]] #[none]] 
        to-bitset [function! 1 ["Convert to bitset! value" value] #[none]] 
        to-binary [function! 1 ["Convert to binary! value" value] #[none]] 
        to-block [function! 1 ["Convert to block! value" value] #[none]] 
        to-char [function! 1 ["Convert to char! value" value] #[none]] 
        to-email [function! 1 ["Convert to email! value" value] #[none]] 
        to-file [function! 1 ["Convert to file! value" value] #[none]] 
        to-float [function! 1 ["Convert to float! value" value] #[none]] 
        to-get-path [function! 1 ["Convert to get-path! value" value] #[none]] 
        to-get-word [function! 1 ["Convert to get-word! value" value] #[none]] 
        to-hash [function! 1 ["Convert to hash! value" value] #[none]] 
        to-integer [function! 1 ["Convert to integer! value" value] #[none]] 
        to-issue [function! 1 ["Convert to issue! value" value] #[none]] 
        to-lit-path [function! 1 ["Convert to lit-path! value" value] #[none]] 
        to-lit-word [function! 1 ["Convert to lit-word! value" value] #[none]] 
        to-logic [function! 1 ["Convert to logic! value" value] #[none]] 
        to-map [function! 1 ["Convert to map! value" value] #[none]] 
        to-native [function! 1 ["Convert to native! value" value] #[none]] 
        to-none [function! 1 ["Convert to none! value" value] #[none]] 
        to-pair [function! 1 ["Convert to pair! value" value] #[none]] 
        to-paren [function! 1 ["Convert to paren! value" value] #[none]] 
        to-path [function! 1 ["Convert to path! value" value] #[none]] 
        to-percent [function! 1 ["Convert to percent! value" value] #[none]] 
        to-refinement [function! 1 ["Convert to refinement! value" value] #[none]] 
        to-set-path [function! 1 ["Convert to set-path! value" value] #[none]] 
        to-set-word [function! 1 ["Convert to set-word! value" value] #[none]] 
        to-string [function! 1 ["Convert to string! value" value] #[none]] 
        to-tag [function! 1 ["Convert to tag! value" value] #[none]] 
        to-time [function! 1 ["Convert to time! value" value] #[none]] 
        to-typeset [function! 1 ["Convert to typeset! value" value] #[none]] 
        to-tuple [function! 1 ["Convert to tuple! value" value] #[none]] 
        to-unset [function! 1 ["Convert to unset! value" value] #[none]] 
        to-url [function! 1 ["Convert to url! value" value] #[none]] 
        to-word [function! 1 ["Convert to word! value" value] #[none]] 
        to-image [function! 1 ["Convert to image! value" value] #[none]] 
        context [function! 1 [spec [block!]] #[none]] 
        alter [function! 2 [
                {If a value is not found in a series, append it; otherwise, remove it. Returns true if added} 
                series [series!] 
                value
            ] #[none]] 
        offset? [function! 2 [
                "Returns the offset between two series positions" 
                series1 [series!] 
                series2 [series!]
            ] #[none]] 
        repend [function! 2 [
                {Appends a reduced value to a series and returns the series head} 
                series [series!] 
                value 
                /only "Appends a block value as a block"
            ] [
                /only 1 0
            ]] 
        replace [function! 3 [
                series [series!] 
                pattern 
                value 
                /all 
                /local many? len pos
            ] [
                /all 1 0
            ]] 
        math [function! 1 [
                {Evaluates a block using math precedence rules, returning the last result} 
                body [block!] "Block to evaluate" 
                /safe "Returns NONE on error" 
                /local rule pos op sub end
            ] [
                /safe 1 0
            ]] 
        charset [function! 1 [
                spec [block! char! integer! string!]
            ] #[none]] 
        on-parse-event [function! 5 [
                event [word!] {Trace events: push, pop, fetch, match, iterate, paren, end} 
                match? [logic!] "Result of last matching operation" 
                rule [block!] "Current rule at current position" 
                input [series!] "Input series at next position to match" 
                stack [block!] "Internal parse rules stack" 
                return: [logic!] {TRUE: continue parsing, FALSE: stop and exit parsing}
            ] #[none]] 
        parse-trace [function! 2 [
                {Wrapper for parse/trace using the default event processor} 
                input [series!] 
                rules [block!] 
                /case 
                /part 
                limit [integer!] 
                return: [logic! block!]
            ] [
                /case 1 0 
                /part 2 1
            ]] 
        suffix? [function! 1 [
                {Returns the suffix (extension) of a filename or url, or NONE if there is no suffix} 
                path [email! file! string! url!]
            ] #[none]] 
        load [function! 1 [
                {Returns a value or block of values by reading and evaluating a source} 
                source [binary! file! string! url!] 
                /header "TBD" 
                /all {Load all values, returns a block. TBD: Don't evaluate Red header} 
                /trap "Load all values, returns [[values] position error]" 
                /next {Load the next value only, updates source series word} 
                position [word!] "Word updated with new series position" 
                /part 
                length [integer! string!] 
                /into {Put results in out block, instead of creating a new block} 
                out [block!] "Target block for results" 
                /as "Specify the type of data; use NONE to load as code" 
                type [none! word!] "E.g. json, html, jpeg, png, etc" 
                /local codec suffix name mime result
            ] [
                /header 1 0 
                /all 2 0 
                /trap 3 0 
                /next 4 1 
                /part 5 1 
                /into 6 1 
                /as 7 1
            ]] 
        save [function! 2 [
                {Saves a value, block, or other data to a file, URL, binary, or string} 
                where [binary! file! none! string! url!] "Where to save" 
                value "Value(s) to save" 
                /header {Provide a Red header block (or output non-code datatypes)} 
                header-data [block! object!] 
                /all "TBD: Save in serialized format" 
                /length {Save the length of the script content in the header} 
                /as {Specify the format of data; use NONE to save as plain text} 
                format [none! word!] "E.g. json, html, jpeg, png, redbin etc" 
                /local codec data suffix find-encoder? name pos header-str k v
            ] [
                /header 1 1 
                /all 2 0 
                /length 3 0 
                /as 4 1
            ]] 
        cause-error [function! 3 [
                {Causes an immediate error throw, with the provided information} 
                err-type [word!] 
                err-id [word!] 
                args [block!] 
                /local type id arg1 arg2 arg3
            ] #[none]] 
        pad [function! 2 [
                "Pad a string on right side with spaces" 
                str [string!] "String to pad" 
                n [integer!] "Total size (in characters) of the new string" 
                /left "Pad the string on left side" 
                /with c [char!] "Pad with char" 
                return: [string!] "Modified input string at head"
            ] [
                /left 1 0 
                /with 2 1
            ]] 
        mod [function! 2 [
                "Compute a nonnegative remainder of A divided by B" 
                a [char! number! pair! time! tuple! vector!] 
                b [char! number! pair! time! tuple! vector!] "Must be nonzero" 
                return: [number! char! pair! tuple! vector! time!] 
                /local r
            ] #[none]] 
        modulo [function! 2 [
                {^{Wrapper for MOD that handles errors like REMAINDER. Negligible values (compared to A and B) are rounded to zero} 
                a [char! number! pair! time! tuple! vector!] 
                b [char! number! pair! time! tuple! vector!] 
                return: [number! char! pair! tuple! vector! time!] 
                /local r
            ] #[none]] 
        eval-set-path [function! 1 [value1] #[none]] 
        to-red-file [function! 1 [
                path [file! string!] 
                return: [file!] 
                /local colon? slash? len i c dst
            ] #[none]] 
        dir? [function! 1 [file [file! url!]] #[none]] 
        normalize-dir [function! 1 [
                dir [file! path! word!]
            ] #[none]] 
        what-dir [function! 0 [/local path] #[none]] 
        change-dir [function! 1 [
                "Changes the active directory path" 
                dir [file! path! word!] {New active directory of relative path to the new one}
            ] #[none]] 
        list-dir [function! 1 [
                {Displays a list of files and directories from given folder or current one} 
                dir [any-type!] "Folder to list" 
                /col "Forces the display in a given number of columns" 
                n [integer!] "Number of columns" 
                /local list max-sz name
            ] [
                /col 1 1
            ]] 
        make-dir [function! 1 [
                {Creates the specified directory. No error if already exists} 
                path [file!] 
                /deep "Create subdirectories too" 
                /local dirs end created dir
            ] [
                /deep 1 0
            ]] 
        extract [function! 2 [
                {Extracts a value from a series at regular intervals} 
                series [series!] 
                width [integer!] "Size of each entry (the skip)" 
                /index "Extract from an offset position" 
                pos [integer!] "The position" 
                /into {Provide an output series instead of creating a new one} 
                output [series!] "Output series"
            ] [
                /index 1 1 
                /into 2 1
            ]] 
        extract-boot-args [function! 0 [
                {Process command-line arguments and store values in system/options (internal usage)} 
                /local args pos unescape len e s
            ] #[none]] 
        collect [function! 1 [
                {Collect in a new block all the values passed to KEEP function from the body block} 
                body [block!] "Block to evaluate" 
                /into {Insert into a buffer instead (returns position after insert)} 
                collected [series!] "The buffer series (modified)" 
                /local keep rule pos
            ] [
                /into 1 1
            ]] 
        flip-exe-flag [function! 1 [
                {Flip the sub-system for the red.exe between console and GUI modes (Windows only)} 
                path [file!] "Path to the red.exe" 
                /local file buffer flag
            ] #[none]] 
        split [function! 2 [
                {Break a string series into pieces using the provided delimiters} 
                series [any-string!] dlm [bitset! char! string!] /local s 
                num
            ] #[none]] 
        dirize [function! 1 [
                "Returns a copy of the path turned into a directory" 
                path [file! string! url!]
            ] #[none]] 
        clean-path [function! 1 [
                {Cleans-up '.' and '..' in path; returns the cleaned path} 
                file [file! string! url!] 
                /only "Do not prepend current directory" 
                /dir "Add a trailing / if missing" 
                /local out cnt f not-file?
            ] [
                /only 1 0 
                /dir 2 0
            ]] 
        split-path [function! 1 [
                {Splits a file or URL path. Returns a block containing path and target} 
                target [file! url!] 
                /local dir pos
            ] #[none]] 
        do-file [function! 1 [file [file!] /local saved code new-path src] #[none]] 
        cos [function! 1 [
                "Returns the trigonometric cosine" 
                angle [float!] "Angle in radians"
            ] #[none]] 
        sin [function! 1 [
                "Returns the trigonometric sine" 
                angle [float!] "Angle in radians"
            ] #[none]] 
        tan [function! 1 [
                "Returns the trigonometric tangent" 
                angle [float!] "Angle in radians"
            ] #[none]] 
        acos [function! 1 [
                "Returns the trigonometric arccosine" 
                angle [float!] "Angle in radians"
            ] #[none]] 
        asin [function! 1 [
                "Returns the trigonometric arcsine" 
                angle [float!] "Angle in radians"
            ] #[none]] 
        atan [function! 1 [
                "Returns the trigonometric arctangent" 
                angle [float!] "Angle in radians"
            ] #[none]] 
        atan2 [function! 2 [
                "Returns the angle of the point y/x in radians" 
                y [number!] 
                x [number!] 
                return: [float!]
            ] #[none]] 
        sqrt [function! 1 [
                "Returns the square root of a number" 
                number [number!] "Angle in radians" 
                return: [float!]
            ] #[none]] 
        rejoin [function! 1 [
                "Reduces and joins a block of values." 
                block [block!] "Values to reduce and join"
            ] #[none]] 
        keys-of [function! 1 [{Returns the list of words of a value that supports reflection} value] #[none]] 
        object [function! 1 [spec [block!]] #[none]] 
        halt [function! 0 [
                "Stops evaluation and exits the program" 
                /return status [integer!] "Return an exit status"
            ] [
                /return 1 1
            ]] 
        ctx192~platform [function! 0 ["Return a word identifying the operating system"] #[none]] 
        ctx217~interpreted? [function! 0 ["Return TRUE if called from the interpreter"] #[none]] 
        ctx228~on-change* [function! 3 [word old new] #[none]] 
        ctx226~on-change* [function! 3 [word old new] #[none]] 
        ctx226~on-deep-change* [function! 7 [owner word target action new index part] #[none]] 
        ctx241~throw-error [function! 1 [spec [block!] /missing 
                /local type src pos
            ] [/missing 1 0]] 
        ctx241~make-hm [routine! 2 [h #[block![2 1x1 integer!]3] m #[block![2 1x1 integer!]3]] #[none]] 
        ctx241~make-msf [routine! 2 [m #[block![2 1x1 integer!]3] s #[block![2 1x1 float!]3]] #[none]] 
        ctx241~make-hms [routine! 3 [h #[block![2 1x1 integer!]3] m #[block![2 1x1 integer!]3] s #[block![2 1x1 integer!]3]] #[none]] 
        ctx241~make-hmsf [routine! 3 [h #[block![2 1x1 integer!]3] m #[block![2 1x1 integer!]3] s #[block![2 1x1 float!]3]] #[none]] 
        ctx241~make-time [function! 5 [
                pos [string!] 
                hours [integer! none!] 
                mins [integer!] 
                secs [float! integer! none!] 
                neg? [logic!] 
                return: [time!] 
                /local time
            ] #[none]] 
        ctx241~make-binary [routine! 3 [
                start #[block![2 1x1 red-string!]3] 
                end #[block![2 1x1 red-string!]3] 
                base #[block![2 1x1 integer!]3] 
                /local 
                s #[block![2 1x1 red/series-buffer!]3] 
                p #[block![2 1x1 pointer! #[block![2 1x1 byte!]3]]3] 
                len #[block![2 1x1 integer!]3] 
                unit #[block![2 1x1 integer!]3] 
                ret #[block![2 1x1 red-binary!]3]
            ] #[none]] 
        ctx241~make-tuple [routine! 2 [
                start #[block![2 1x1 red-string!]3] 
                end #[block![2 1x1 red-string!]3] 
                /local 
                str #[block![2 1x1 red/series-buffer!]3] 
                c #[block![2 1x1 integer!]3] 
                n #[block![2 1x1 integer!]3] 
                m #[block![2 1x1 integer!]3] 
                len #[block![2 1x1 integer!]3] 
                unit #[block![2 1x1 integer!]3] 
                size #[block![2 1x1 integer!]3] 
                p #[block![2 1x1 pointer! #[block![2 1x1 byte!]3]]3] 
                tp #[block![2 1x1 pointer! #[block![2 1x1 byte!]3]]3] 
                ret #[block![2 1x1 red/cell!]3]
            ] #[none]] 
        ctx241~make-number [routine! 3 [
                start #[block![2 1x1 red-string!]3] 
                end #[block![2 1x1 red-string!]3] 
                type #[block![2 1x1 red-datatype!]3] 
                /local 
                str #[block![2 1x1 red/series-buffer!]3] 
                c #[block![2 1x1 integer!]3] 
                n #[block![2 1x1 integer!]3] 
                m #[block![2 1x1 integer!]3] 
                len #[block![2 1x1 integer!]3] 
                unit #[block![2 1x1 integer!]3] 
                p #[block![2 1x1 pointer! #[block![2 1x1 byte!]3]]3] 
                neg? #[block![2 1x1 logic!]3]
            ] #[none]] 
        ctx241~make-float [routine! 3 [
                start #[block![2 1x1 red-string!]3] 
                end #[block![2 1x1 red-string!]3] 
                type #[block![2 1x1 red-datatype!]3] 
                /local 
                str #[block![2 1x1 red/series-buffer!]3] 
                cp #[block![2 1x1 integer!]3] 
                unit #[block![2 1x1 integer!]3] 
                len #[block![2 1x1 integer!]3] 
                p #[block![2 1x1 pointer! #[block![2 1x1 byte!]3]]3] 
                tail #[block![2 1x1 pointer! #[block![2 1x1 byte!]3]]3] 
                cur #[block![2 1x1 pointer! #[block![2 1x1 byte!]3]]3] 
                s0 #[block![2 1x1 pointer! #[block![2 1x1 byte!]3]]3] 
                f #[block![2 1x1 float!]3]
            ] #[none]] 
        ctx241~make-hexa [routine! 2 [
                start #[block![2 1x1 red-string!]3] 
                end #[block![2 1x1 red-string!]3] 
                return: #[block![2 1x1 integer!]3] 
                /local 
                s #[block![2 1x1 red/series-buffer!]3] 
                unit #[block![2 1x1 integer!]3] 
                p #[block![2 1x1 pointer! #[block![2 1x1 byte!]3]]3] 
                head #[block![2 1x1 pointer! #[block![2 1x1 byte!]3]]3] 
                p4 #[block![2 1x1 pointer! #[block![2 1x1 integer!]3]]3] 
                n #[block![2 1x1 integer!]3] 
                power #[block![2 1x1 integer!]3] 
                cp #[block![2 1x1 byte!]3]
            ] #[none]] 
        ctx241~make-char [routine! 2 [
                start #[block![2 1x1 red-string!]3] 
                end #[block![2 1x1 red-string!]3] 
                /local 
                n #[block![2 1x1 integer!]3] 
                value #[block![2 1x1 red/cell!]3]
            ] #[none]] 
        ctx241~push-path [routine! 2 [
                stack #[block![2 1x1 red-block!]3] 
                type #[block![2 1x1 red-datatype!]3] 
                /local 
                path #[block![2 1x1 red-path!]3]
            ] #[none]] 
        ctx241~set-path [routine! 1 [
                stack #[block![2 1x1 red-block!]3] 
                /local 
                path #[block![2 1x1 red-path!]3]
            ] #[none]] 
        ctx241~make-word [routine! 2 [
                src #[block![2 1x1 red-string!]3] 
                type #[block![2 1x1 red-datatype!]3]
            ] #[none]] 
        ctx241~to-word [function! 3 [
                stack [block!] 
                src [string!] 
                type [datatype!]
            ] #[none]] 
        ctx241~pop [function! 1 [stack [block!] 
                /local value pos
            ] #[none]] 
        ctx241~store [function! 2 [stack [block!] value 
                /local pos
            ] #[none]] 
        ctx241~new-line [routine! 1 [
                series #[block![2 1x1 red/cell!]3] 
                /local 
                blk #[block![2 1x1 red-block!]3] 
                s #[block![2 1x1 red/series-buffer!]3] 
                cell #[block![2 1x1 red/cell!]3]
            ] #[none]] 
        ctx241~transcode [function! 3 [
                src [string!] 
                dst [block! none!] 
                trap [logic!] 
                /one 
                /only 
                /part 
                length [integer! string!] 
                return: [block!] 
                /local 
                new s e c pos value cnt type process path 
                digit hexa-upper hexa-lower hexa hexa-char not-word-char not-word-1st 
                not-file-char not-str-char not-mstr-char caret-char 
                non-printable-char integer-end ws-ASCII ws-U+2k control-char 
                four half non-zero path-end base base64-char slash-end not-url-char 
                email-end pair-end file-end 
                cs stack count? old-line line make-string len make-file buffer byte ws newline-char counted-newline ws-no-count escaped-char char-rule line-string nested-curly-braces multiline-string string-rule tag-rule email-rule base-2-rule base-16-rule base-64-rule binary-rule file-rule url-rule symbol-rule ot begin-symbol-rule path-rule special-words word-rule get-word-rule lit-word-rule issue-rule refinement-rule sticky-word-rule hexa-rule tuple-value-rule tuple-rule time-rule value2 positive-integer-rule integer-number-rule neg? integer-rule float-special float-exp-rule float-number-rule float-rule map-rule block-rule paren-rule escaped-rule comment-rule wrong-end ending literal-value one-value any-value red-rules
            ] [
                /one 1 0 
                /only 2 0 
                /part 3 1
            ]] 
        + [op! 2 ["Returns the sum of the two values" value1 [number! char! pair! tuple! vector! time!] value2 [number! char! pair! tuple! vector! time!] return: [number! char! pair! tuple! vector! time!]] #[none]] 
        - [op! 2 ["Returns the difference between two values" value1 [number! char! pair! tuple! vector! time!] value2 [number! char! pair! tuple! vector! time!] return: [number! char! pair! tuple! vector! time!]] #[none]] 
        * [op! 2 ["Returns the product of two values" value1 [number! char! pair! tuple! vector! time!] value2 [number! char! pair! tuple! vector! time!] return: [number! char! pair! tuple! vector! time!]] #[none]] 
        / [op! 2 ["Returns the quotient of two values" value1 [number! char! pair! tuple! vector! time!] "The dividend (numerator)" value2 [number! char! pair! tuple! vector! time!] "The divisor (denominator)" return: [number! char! pair! tuple! vector! time!]] #[none]] 
        // [op! 2 [
                {^{Wrapper for MOD that handles errors like REMAINDER. Negligible values (compared to A and B) are rounded to zero} 
                a [char! number! pair! time! tuple! vector!] 
                b [char! number! pair! time! tuple! vector!] 
                return: [number! char! pair! tuple! vector! time!] 
                /local r
            ] #[none]] 
        %"" [op! 2 [{Returns what is left over when one value is divided by another} value1 [number! char! pair! tuple! vector! time!] value2 [number! char! pair! tuple! vector! time!] return: [number! char! pair! tuple! vector! time!]] #[none]] 
        = [op! 2 ["Returns TRUE if two values are equal" value1 [any-type!] value2 [any-type!]] #[none]] 
        <> [op! 2 ["Returns TRUE if two values are not equal" value1 [any-type!] value2 [any-type!]] #[none]] 
        == [op! 2 [{Returns TRUE if two values are equal, and also the same datatype} value1 [any-type!] value2 [any-type!]] #[none]] 
        =? [op! 2 ["Returns TRUE if two values have the same identity" value1 [any-type!] value2 [any-type!]] #[none]] 
        < [op! 2 [{Returns TRUE if the first value is less than the second} value1 [any-type!] value2 [any-type!]] #[none]] 
        > [op! 2 [{Returns TRUE if the first value is greater than the second} value1 [any-type!] value2 [any-type!]] #[none]] 
        <= [op! 2 [{Returns TRUE if the first value is less than or equal to the second} value1 [any-type!] value2 [any-type!]] #[none]] 
        >= [op! 2 [{Returns TRUE if the first value is greater than or equal to the second} value1 [any-type!] value2 [any-type!]] #[none]] 
        << [op! 2 [data #[block![2 1x1 integer!]3] bits #[block![2 1x1 integer!]3]] #[none]] 
        >> [op! 2 [data #[block![2 1x1 integer!]3] bits #[block![2 1x1 integer!]3]] #[none]] 
        ">>>" [op! 2 [data #[block![2 1x1 integer!]3] bits #[block![2 1x1 integer!]3]] #[none]] 
        ** [op! 2 [{Returns a number raised to a given power (exponent)} number [number!] "Base value" exponent [number!] "The power (index) to raise the base value by" return: [number!]] #[none]] 
        and [op! 2 ["Returns the first value ANDed with the second" value1 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] value2 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] return: [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!]] #[none]] 
        or [op! 2 ["Returns the first value ORed with the second" value1 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] value2 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] return: [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!]] #[none]] 
        xor [op! 2 [{Returns the first value exclusive ORed with the second} value1 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] value2 [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!] return: [logic! integer! char! bitset! binary! typeset! pair! tuple! vector!]] #[none]] 
        ctx249~encode [routine! 1 [img #[block![2 1x1 red-image!]3]] #[none]] 
        ctx249~decode [routine! 1 [data #[block![2 1x1 red/cell!]3]] #[none]] 
        ctx252~encode [routine! 1 [img #[block![2 1x1 red-image!]3]] #[none]] 
        ctx252~decode [routine! 1 [data #[block![2 1x1 red/cell!]3]] #[none]] 
        ctx255~encode [routine! 1 [img #[block![2 1x1 red-image!]3]] #[none]] 
        ctx255~decode [routine! 1 [data #[block![2 1x1 red/cell!]3]] #[none]] 
        ctx258~encode [routine! 1 [img #[block![2 1x1 red-image!]3]] #[none]] 
        ctx258~decode [routine! 1 [data #[block![2 1x1 red/cell!]3]] #[none]] 
        ctx261~on-change* [function! 3 [word old new] #[none]] 
        ctx264~on-change* [function! 3 [word old new] #[none]] 
        ctx264~on-deep-change* [function! 7 [owner word target action new index part] #[none]] 
        ctx267~eval [function! 1 [code [block!] /safe 
                /local result
            ] [/safe 1 0]] 
        ctx267~eval-reaction [function! 3 [reactor [object!] reaction [block! function!] target] #[none]] 
        ctx267~on-stack? [function! 2 [reactor [object!] reaction [block! function!] 
                /local p
            ] #[none]] 
        ctx267~check [function! 1 [reactor [object!] /only field [set-word! word!] 
                /local pos reaction q
            ] [/only 1 1]] 
        clear-reactions [function! 0 ["Removes all reactive relations"] #[none] ctx267] 
        dump-reactions [function! 0 [
                {Output all the current reactive relations for debugging purpose} 
                /local limit count obj field reaction target list
            ] #[none] ctx267] 
        ctx267~is~ [function! 2 [
                {Defines a reactive relation which result is assigned to a word} 
                'field [set-word!] {Set-word which will get set to the result of the reaction} 
                reaction [block!] "Reactive relation" 
                /local words obj rule item
            ] #[none] ctx267] 
        is [op! 2 [
                {Defines a reactive relation which result is assigned to a word} 
                'field [set-word!] {Set-word which will get set to the result of the reaction} 
                reaction [block!] "Reactive relation" 
                /local words obj rule item
            ] #[none]] 
        react? [function! 2 [
                {Returns a reactive relation if an object's field is a reactive source} 
                reactor [object!] "Object to check" 
                field [word!] "Field to check" 
                /target "Check if it's a target instead of a source" 
                return: [block! function! word! none!] "Returns reaction, type or NONE" 
                /local pos
            ] [
                /target 1 0
            ] ctx267] 
        react [function! 1 [
                {Defines a new reactive relation between two or more objects} 
                reaction [block! function!] "Reactive relation" 
                /link "Link objects together using a reactive relation" 
                objects [block!] "Objects to link together" 
                /unlink "Removes an existing reactive relation" 
                src [block! object! word!] "'all word, or a reactor or a list of reactors" 
                /later "Run the reaction on next change instead of now" 
                /with "Specifies an optional face object (internal use)" 
                ctx [none! object! set-word!] "Optional context for VID faces or target set-word" 
                return: [block! function! none!] {The reactive relation or NONE if no relation was processed} 
                /local objs found? rule item pos obj saved part path
            ] [
                /link 1 1 
                /unlink 2 1 
                /later 3 0 
                /with 4 1
            ] ctx267] 
        ctx278~do-quit [function! 0 [] #[none]] 
        ctx278~throw-error [function! 3 [error [error!] cmd [issue!] code [block!] /local w] #[none]] 
        ctx278~syntax-error [function! 2 [s [block! paren!] e [block! paren!]] #[none]] 
        ctx278~do-safe [function! 1 [code [block!] /manual /with cmd [issue!] /local res t? src] [/manual 1 0 /with 2 1]] 
        ctx278~do-code [function! 2 [code [block!] cmd [issue!] /local p] #[none]] 
        ctx278~count-args [function! 1 [spec [block!] /local total] #[none]] 
        ctx278~func-arity? [function! 1 [spec [block!] /with path [path!] /local arity pos] [/with 1 1]] 
        ctx278~fetch-next [function! 1 [code [block!] /local base arity value path] #[none]] 
        ctx278~eval [function! 2 [code [block!] cmd [issue!] /local after expr] #[none]] 
        ctx278~do-macro [function! 3 [name pos [block! paren!] arity [integer!] /local cmd saved p v res] #[none]] 
        ctx278~register-macro [function! 1 [spec [block!] /local cnt rule p name macro pos] #[none]] 
        ctx278~reset [function! 1 [job [none! object!]] #[none]] 
        ctx278~expand [function! 2 [
                code [block!] job [none! object!] 
                /clean 
                /local rule e pos cond value then else cases body keep? expr
            ] [
                /clean 1 0
            ]] 
        expand-directives [function! 1 [
                {Invokes the preprocessor on argument list, modifying and returning it} 
                code [block! paren!] "List of Red values to preprocess" 
                /clean "Clear all previously created macros and words" 
                /local job
            ] [
                /clean 1 0
            ] ctx278] 
        keep [function! 1 [v /only] [/only 1 0]]
    ] 1067 #[hash![datatype! unset! 
        make unset! none! unset! logic! unset! block! unset! string! unset! integer! unset! word! unset! error! unset! typeset! unset! file! unset! url! unset! set-word! unset! get-word! unset! lit-word! unset! refinement! unset! binary! unset! paren! unset! char! unset! issue! unset! path! unset! set-path! unset! get-path! unset! lit-path! unset! native! unset! action! unset! op! unset! function! unset! routine! unset! object! unset! bitset! unset! float! unset! point! unset! vector! unset! map! unset! hash! unset! pair! unset! percent! unset! tuple! unset! image! unset! time! unset! tag! unset! email! unset! handle! unset! none unset! true unset! false unset! random unset! reflect unset! to unset! form unset! mold unset! modify unset! absolute unset! add unset! divide unset! multiply unset! negate unset! power unset! remainder unset! round unset! subtract unset! even? unset! odd? unset! and~ unset! complement unset! or~ unset! xor~ unset! append unset! at unset! back unset! change unset! clear unset! copy unset! find unset! head unset! head? unset! index? unset! insert unset! length? unset! move unset! next unset! pick unset! poke unset! put unset! remove unset! reverse unset! select unset! sort unset! skip unset! swap unset! tail unset! tail? unset! take unset! trim unset! read unset! write unset! if unset! unless unset! either unset! any unset! all unset! while unset! until unset! loop unset! repeat unset! forever unset! foreach unset! forall unset! remove-each unset! func unset! function unset! does unset! has unset! switch unset! case unset! do unset! reduce unset! compose unset! get unset! set unset! print unset! prin unset! equal? unset! not-equal? unset! strict-equal? unset! lesser? unset! greater? unset! lesser-or-equal? unset! greater-or-equal? unset! same? unset! not unset! type? unset! stats unset! bind unset! in unset! parse unset! union unset! unique unset! intersect unset! difference unset! exclude unset! complement? unset! dehex unset! negative? unset! positive? unset! max unset! min unset! shift unset! to-hex unset! sine unset! cosine unset! tangent unset! arcsine unset! arccosine unset! arctangent unset! arctangent2 unset! NaN? unset! zero? unset! log-2 unset! log-10 unset! log-e unset! exp unset! square-root unset! construct unset! value? unset! try unset! uppercase unset! lowercase unset! as-pair unset! break unset! continue unset! exit unset! return unset! throw unset! catch unset! extend unset! debase unset! enbase unset! to-local-file unset! wait unset! checksum unset! unset unset! new-line unset! new-line? unset! context? unset! set-env unset! get-env unset! list-env unset! now unset! sign? unset! as unset! call unset! quit-return unset! set-quiet unset! browse unset! shift-right unset! shift-left unset! shift-logical unset! last-lf? unset! get-current-dir unset! set-current-dir unset! create-dir unset! exists? unset! as-color unset! as-ipv4 unset! as-rgba unset! write-stdout unset! yes unset! on unset! no unset! off unset! tab unset! cr unset! newline unset! lf unset! escape unset! slash unset! sp unset! space unset! null unset! crlf unset! dot unset! comma unset! dbl-quote unset! pi unset! Rebol unset! internal! unset! number! unset! scalar! unset! any-word! unset! any-list! unset! any-path! unset! any-block! unset! any-function! unset! any-object! unset! any-string! unset! series! unset! immediate! unset! default! unset! any-type! unset! aqua unset! beige unset! black unset! blue unset! brick unset! brown unset! coal unset! coffee unset! crimson unset! cyan unset! forest unset! gold unset! gray unset! green unset! ivory unset! khaki unset! leaf unset! linen unset! magenta unset! maroon unset! mint unset! navy unset! oldrab unset! olive unset! orange unset! papaya unset! pewter unset! pink unset! purple unset! reblue unset! rebolor unset! red unset! sienna unset! silver unset! sky unset! snow unset! tanned unset! teal unset! violet unset! water unset! wheat unset! white unset! yello unset! yellow unset! glass unset! transparent unset! routine unset! also unset! attempt unset! comment unset! quit unset! empty? unset! ?? unset! probe unset! quote unset! first unset! second unset! third unset! fourth unset! fifth unset! last unset! spec-of unset! body-of unset! words-of unset! class-of unset! values-of unset! bitset? unset! binary? unset! block? unset! char? unset! email? unset! file? unset! float? unset! get-path? unset! get-word? unset! hash? unset! integer? unset! issue? unset! lit-path? unset! lit-word? unset! logic? unset! map? unset! native? unset! none? unset! pair? unset! paren? unset! path? unset! percent? unset! refinement? unset! set-path? unset! set-word? unset! string? unset! tag? unset! time? unset! typeset? unset! tuple? unset! unset? unset! url? unset! word? unset! image? unset! handle? unset! error? unset! action? unset! datatype? unset! function? unset! object? unset! op? unset! routine? unset! vector? unset! any-list? unset! any-block? unset! any-function? unset! any-object? unset! any-path? unset! any-string? unset! any-word? unset! series? unset! number? unset! immediate? unset! scalar? unset! to-bitset unset! to-binary unset! to-block unset! to-char unset! to-email unset! to-file unset! to-float unset! to-get-path unset! to-get-word unset! to-hash unset! to-integer unset! to-issue unset! to-lit-path unset! to-lit-word unset! to-logic unset! to-map unset! to-native unset! to-none unset! to-pair unset! to-paren unset! to-path unset! to-percent unset! to-refinement unset! to-set-path unset! to-set-word unset! to-string unset! to-tag unset! to-time unset! to-typeset unset! to-tuple unset! to-unset unset! to-url unset! to-word unset! to-image unset! context unset! alter unset! offset? unset! repend unset! replace unset! math unset! charset unset! p-indent unset! on-parse-event unset! parse-trace unset! suffix? unset! load unset! save unset! cause-error unset! pad unset! mod unset! modulo unset! eval-set-path unset! to-red-file unset! dir? unset! normalize-dir unset! what-dir unset! change-dir unset! list-dir unset! make-dir unset! extract unset! extract-boot-args unset! collect unset! flip-exe-flag unset! split unset! dirize unset! clean-path unset! split-path unset! do-file unset! cos unset! sin unset! tan unset! acos unset! asin unset! atan unset! atan2 unset! sqrt unset! rejoin unset! keys-of unset! object unset! halt unset! system unset! version unset! build unset! date unset! config unset! words unset! platform unset! catalog unset! datatypes unset! actions unset! natives unset! errors unset! code unset! type unset! note unset! no-load unset! syntax unset! invalid unset! missing unset! no-header unset! no-rs-header unset! bad-header unset! malconstruct unset! bad-char unset! script unset! no-value unset! need-value unset! not-defined unset! not-in-context unset! no-arg unset! expect-arg unset! expect-val unset! expect-type unset! cannot-use unset! invalid-arg unset! invalid-type unset! invalid-type-spec unset! invalid-op unset! no-op-arg unset! bad-op-spec unset! invalid-data unset! invalid-part unset! not-same-type unset! not-same-class unset! not-related unset! bad-func-def unset! bad-func-arg unset! bad-func-extern unset! no-refine unset! bad-refines unset! bad-refine unset! word-first unset! empty-path unset! invalid-path unset! invalid-path-set unset! invalid-path-get unset! bad-path-type unset! bad-path-set unset! bad-field-set unset! dup-vars unset! past-end unset! missing-arg unset! out-of-range unset! invalid-chars unset! invalid-compare unset! wrong-type unset! invalid-refine-arg unset! type-limit unset! size-limit unset! no-return unset! throw-usage unset! locked-word unset! bad-bad unset! bad-make-arg unset! bad-to-arg unset! invalid-spec-field unset! missing-spec-field unset! move-bad unset! too-long unset! invalid-char unset! parse-rule unset! parse-end unset! parse-invalid-ref unset! parse-block unset! parse-unsupported unset! parse-infinite unset! parse-stack unset! parse-keep unset! parse-into-bad unset! invalid-draw unset! invalid-data-facet unset! face-type unset! not-window unset! bad-window unset! not-linked unset! not-event-type unset! invalid-facet-type unset! vid-invalid-syntax unset! react-bad-func unset! react-not-enough unset! react-no-match unset! react-bad-obj unset! react-gctx unset! lib-invalid-arg unset! zero-divide unset! overflow unset! positive unset! access unset! cannot-open unset! invalid-utf8 unset! no-connect unset! user unset! message unset! internal unset! bad-path unset! not-here unset! no-memory unset! wrong-mem unset! stack-overflow unset! too-deep unset! feature-na unset! not-done unset! invalid-error unset! routines unset! red-system unset! state unset! interpreted? unset! last-error unset! trace? unset! modules unset! codecs unset! schemes unset! ports unset! locale unset! language unset! language* unset! locale* unset! months unset! days unset! options unset! boot unset! home unset! path unset! args unset! do-arg unset! debug unset! secure unset! quiet unset! binary-base unset! decimal-digits unset! module-paths unset! file-types unset! float unset! pretty? unset! full? unset! on-change* unset! on-deep-change* unset! title unset! header unset! parent unset! standard unset! name unset! file unset! author unset! needs unset! error unset! id unset! arg1 unset! arg2 unset! arg3 unset! near unset! where unset! stack unset! lexer unset! console unset! view unset! reactivity unset! pre-load unset! throw-error unset! make-hm unset! ctx241~make-hm unset! make-msf unset! ctx241~make-msf unset! make-hms unset! ctx241~make-hms unset! make-hmsf unset! ctx241~make-hmsf unset! make-time unset! make-binary unset! ctx241~make-binary unset! make-tuple unset! ctx241~make-tuple unset! make-number unset! ctx241~make-number unset! make-float unset! ctx241~make-float unset! make-hexa unset! ctx241~make-hexa unset! make-char unset! ctx241~make-char unset! push-path unset! ctx241~push-path unset! set-path unset! ctx241~set-path unset! make-word unset! ctx241~make-word unset! pop unset! store unset! ctx241~new-line unset! transcode unset! + unset! - unset! * unset! / unset! // unset! %"" unset! = unset! <> unset! == unset! =? unset! < unset! > unset! <= unset! >= unset! << unset! >> unset! ">>>" unset! ** unset! and unset! or unset! xor unset! mime-type unset! suffixes unset! encode unset! ctx249~encode unset! decode unset! ctx249~decode unset! ctx252~encode unset! ctx252~decode unset! ctx255~encode unset! ctx255~decode unset! ctx258~encode unset! ctx258~decode unset! reactor! unset! deep-reactor! unset! relations unset! queue unset! debug? unset! eval unset! eval-reaction unset! on-stack? unset! check unset! clear-reactions unset! dump-reactions unset! is~ unset! is unset! react? unset! react unset! preprocessor unset! exec unset! protos unset! macros unset! syms unset! depth unset! active? unset! s unset! do-quit unset! syntax-error unset! do-safe unset! do-code unset! count-args unset! func-arity? unset! fetch-next unset! do-macro unset! register-macro unset! reset unset! expand unset! expand-directives unset! err unset! word unset!
    ]] [
        system #[object! [
            version: #[none]
            build: #[object! [
                date: #[none]
                config: #[none]
            ]]
            words: #[none]
            platform: #[datatype! function!]
            catalog: #[object! [
                datatypes: #[none]
                actions: #[none]
                natives: #[none]
                errors: #[object! [
                    throw: #[object! [
                        code: #[none]
                        type: #[none]
                        break: #[none]
                        return: #[none]
                        throw: #[none]
                        continue: #[none]
                    ]]
                    note: #[object! [
                        code: #[none]
                        type: #[none]
                        no-load: #[none]
                    ]]
                    syntax: #[object! [
                        code: #[none]
                        type: #[none]
                        invalid: #[none]
                        missing: #[none]
                        no-header: #[none]
                        no-rs-header: #[none]
                        bad-header: #[none]
                        malconstruct: #[none]
                        bad-char: #[none]
                    ]]
                    script: #[object! [
                        code: #[none]
                        type: #[none]
                        no-value: #[none]
                        need-value: #[none]
                        not-defined: #[none]
                        not-in-context: #[none]
                        no-arg: #[none]
                        expect-arg: #[none]
                        expect-val: #[none]
                        expect-type: #[none]
                        cannot-use: #[none]
                        invalid-arg: #[none]
                        invalid-type: #[none]
                        invalid-type-spec: #[none]
                        invalid-op: #[none]
                        no-op-arg: #[none]
                        bad-op-spec: #[none]
                        invalid-data: #[none]
                        invalid-part: #[none]
                        not-same-type: #[none]
                        not-same-class: #[none]
                        not-related: #[none]
                        bad-func-def: #[none]
                        bad-func-arg: #[none]
                        bad-func-extern: #[none]
                        no-refine: #[none]
                        bad-refines: #[none]
                        bad-refine: #[none]
                        word-first: #[none]
                        empty-path: #[none]
                        invalid-path: #[none]
                        invalid-path-set: #[none]
                        invalid-path-get: #[none]
                        bad-path-type: #[none]
                        bad-path-set: #[none]
                        bad-field-set: #[none]
                        dup-vars: #[none]
                        past-end: #[none]
                        missing-arg: #[none]
                        out-of-range: #[none]
                        invalid-chars: #[none]
                        invalid-compare: #[none]
                        wrong-type: #[none]
                        invalid-refine-arg: #[none]
                        type-limit: #[none]
                        size-limit: #[none]
                        no-return: #[none]
                        throw-usage: #[none]
                        locked-word: #[none]
                        bad-bad: #[none]
                        bad-make-arg: #[none]
                        bad-to-arg: #[none]
                        invalid-spec-field: #[none]
                        missing-spec-field: #[none]
                        move-bad: #[none]
                        too-long: #[none]
                        invalid-char: #[none]
                        parse-rule: #[none]
                        parse-end: #[none]
                        parse-invalid-ref: #[none]
                        parse-block: #[none]
                        parse-unsupported: #[none]
                        parse-infinite: #[none]
                        parse-stack: #[none]
                        parse-keep: #[none]
                        parse-into-bad: #[none]
                        invalid-draw: #[none]
                        invalid-data-facet: #[none]
                        face-type: #[none]
                        not-window: #[none]
                        bad-window: #[none]
                        not-linked: #[none]
                        not-event-type: #[none]
                        invalid-facet-type: #[none]
                        vid-invalid-syntax: #[none]
                        react-bad-func: #[none]
                        react-not-enough: #[none]
                        react-no-match: #[none]
                        react-bad-obj: #[none]
                        react-gctx: #[none]
                        lib-invalid-arg: #[none]
                    ]]
                    math: #[object! [
                        code: #[none]
                        type: #[none]
                        zero-divide: #[none]
                        overflow: #[none]
                        positive: #[none]
                    ]]
                    access: #[object! [
                        code: #[none]
                        type: #[none]
                        cannot-open: #[none]
                        invalid-utf8: #[none]
                        no-connect: #[none]
                    ]]
                    user: #[object! [
                        code: #[none]
                        type: #[none]
                        message: #[none]
                    ]]
                    internal: #[object! [
                        code: #[none]
                        type: #[none]
                        bad-path: #[none]
                        not-here: #[none]
                        no-memory: #[none]
                        wrong-mem: #[none]
                        stack-overflow: #[none]
                        too-deep: #[none]
                        feature-na: #[none]
                        not-done: #[none]
                        invalid-error: #[none]
                        routines: #[none]
                        red-system: #[none]
                    ]]
                ]]
            ]]
            state: #[object! [
                interpreted?: #[datatype! function!]
                last-error: #[none]
                trace?: #[none]
            ]]
            modules: #[none]
            codecs: #[none]
            schemes: #[object! [
            ]]
            ports: #[object! [
            ]]
            locale: #[object! [
                language: #[none]
                language*: #[none]
                locale: #[none]
                locale*: #[none]
                months: #[none]
                days: #[none]
            ]]
            options: #[object! [
                boot: #[none]
                home: #[none]
                path: #[none]
                script: #[none]
                args: #[none]
                do-arg: #[none]
                debug: #[none]
                secure: #[none]
                quiet: #[none]
                binary-base: #[none]
                decimal-digits: #[none]
                module-paths: #[none]
                file-types: #[none]
                float: #[object! [
                    pretty?: #[none]
                    full?: #[none]
                    on-change*: #[datatype! function!]
                ]]
                on-change*: #[datatype! function!]
                on-deep-change*: #[datatype! function!]
            ]]
            script: #[object! [
                title: #[none]
                header: #[none]
                parent: #[none]
                path: #[none]
                args: #[none]
            ]]
            standard: #[object! [
                header: #[object! [
                    title: #[none]
                    name: #[none]
                    type: #[none]
                    version: #[none]
                    date: #[none]
                    file: #[none]
                    author: #[none]
                    needs: #[none]
                ]]
                error: #[object! [
                    code: #[none]
                    type: #[none]
                    id: #[none]
                    arg1: #[none]
                    arg2: #[none]
                    arg3: #[none]
                    near: #[none]
                    where: #[none]
                    stack: #[none]
                ]]
            ]]
            lexer: #[object! [
                pre-load: #[none]
                throw-error: #[datatype! function!]
                make-hm: #[datatype! function!]
                make-msf: #[datatype! function!]
                make-hms: #[datatype! function!]
                make-hmsf: #[datatype! function!]
                make-time: #[datatype! function!]
                make-binary: #[datatype! function!]
                make-tuple: #[datatype! function!]
                make-number: #[datatype! function!]
                make-float: #[datatype! function!]
                make-hexa: #[datatype! function!]
                make-char: #[datatype! function!]
                push-path: #[datatype! function!]
                set-path: #[datatype! function!]
                make-word: #[datatype! function!]
                to-word: #[datatype! function!]
                pop: #[datatype! function!]
                store: #[datatype! function!]
                new-line: #[datatype! function!]
                transcode: #[datatype! function!]
            ]]
            console: #[none]
            view: #[none]
            reactivity: #[object! [
                relations: #[none]
                stack: #[none]
                queue: #[none]
                debug?: #[none]
                eval: #[datatype! function!]
                eval-reaction: #[datatype! function!]
                on-stack?: #[datatype! function!]
                check: #[datatype! function!]
                is~: #[datatype! function!]
            ]]
        ]] ctx192 193 #[none] #[none] ctx194 (red/objects/system/build) ctx194 195 #[none] #[none] ctx197 (red/objects/system/catalog) ctx197 198 #[none] #[none] ctx199 (red/objects/system/catalog/errors) ctx199 200 #[none] #[none] ctx201 (red/objects/system/catalog/errors/throw) ctx201 202 #[none] #[none] ctx203 (red/objects/system/catalog/errors/note) ctx203 204 #[none] #[none] ctx205 (red/objects/system/catalog/errors/syntax) ctx205 206 #[none] #[none] ctx207 (red/objects/system/catalog/errors/script) ctx207 208 #[none] #[none] ctx209 (red/objects/system/catalog/errors/math) ctx209 210 #[none] #[none] ctx211 (red/objects/system/catalog/errors/access) ctx211 212 #[none] #[none] ctx213 (red/objects/system/catalog/errors/user) ctx213 214 #[none] #[none] ctx215 (red/objects/system/catalog/errors/internal) ctx215 216 #[none] #[none] ctx217 (red/objects/system/state) ctx217 218 #[none] #[none] ctx220 (red/objects/system/schemes) ctx220 221 #[none] #[none] ctx222 (red/objects/system/ports) ctx222 223 #[none] #[none] ctx224 (red/objects/system/locale) ctx224 225 #[none] #[none] ctx226 (red/objects/system/options) ctx226 227 #[none] [14 0 15 0] ctx228 (red/objects/system/options/float) ctx228 229 #[none] [2 0 -1 0] ctx233 (red/objects/system/script) ctx233 234 #[none] #[none] ctx235 (red/objects/system/standard) ctx235 236 #[none] #[none] ctx237 (red/objects/system/standard/header) ctx237 238 #[none] #[none] ctx239 (red/objects/system/standard/error) ctx239 240 #[none] #[none] ctx241 (red/objects/system/lexer) ctx241 242 #[none] #[none] #[none] #[object! [
            title: #[none]
            name: #[none]
            mime-type: #[none]
            suffixes: #[none]
            encode: #[datatype! function!]
            decode: #[datatype! function!]
        ]] ctx249 250 #[none] #[none] #[none] #[object! [
            title: #[none]
            name: #[none]
            mime-type: #[none]
            suffixes: #[none]
            encode: #[datatype! function!]
            decode: #[datatype! function!]
        ]] ctx252 253 #[none] #[none] #[none] #[object! [
            title: #[none]
            name: #[none]
            mime-type: #[none]
            suffixes: #[none]
            encode: #[datatype! function!]
            decode: #[datatype! function!]
        ]] ctx255 256 #[none] #[none] context #[object! [
            title: #[none]
            name: #[none]
            mime-type: #[none]
            suffixes: #[none]
            encode: #[datatype! function!]
            decode: #[datatype! function!]
        ]] ctx258 259 #[none] #[none] #[none] #[object! [
            title: #[none]
            name: #[none]
            mime-type: #[none]
            suffixes: #[none]
            encode: #[datatype! function!]
            decode: #[datatype! function!]
        ]] ctx258 259 #[none] #[none] 
        reactor! #[object! [
            on-change*: #[datatype! function!]
        ]] ctx261 262 #[none] [0 0 -1 0] 
        deep-reactor! #[object! [
            on-change*: #[datatype! function!]
            on-deep-change*: #[datatype! function!]
        ]] ctx264 265 [#[object! [
                on-change*: #[datatype! function!]
            ]]] [0 0 1 0] ctx267 (red/objects/system/reactivity) ctx267 268 #[none] #[none] #[none] #[object! [
            title: #[none]
            name: #[none]
            mime-type: #[none]
            suffixes: #[none]
            encode: #[datatype! function!]
            decode: #[datatype! function!]
        ]] ctx258 259 #[none] #[none] 
        preprocessor #[object! [
            exec: #[none]
            protos: #[none]
            macros: #[none]
            stack: #[none]
            syms: #[none]
            depth: #[none]
            active?: #[none]
            trace?: #[none]
            s: #[none]
            do-quit: #[datatype! function!]
            throw-error: #[datatype! function!]
            syntax-error: #[datatype! function!]
            do-safe: #[datatype! function!]
            do-code: #[datatype! function!]
            count-args: #[datatype! function!]
            func-arity?: #[datatype! function!]
            fetch-next: #[datatype! function!]
            eval: #[datatype! function!]
            do-macro: #[datatype! function!]
            register-macro: #[datatype! function!]
            reset: #[datatype! function!]
            expand: #[datatype! function!]
        ]] ctx278 279 #[none] #[none]
    ] #[hash![ctx42 [spec body] ctx43 [
            value1 
            value2
        ] ctx44 [
            value 
            safer
        ] ctx45 [value] ctx46 [
            return status
        ] ctx47 [
            series
        ] ctx48 [
            value
        ] ctx49 [
            value
        ] ctx50 [
            value
        ] ctx51 [s] ctx52 [s] ctx53 [s] ctx54 [s] ctx55 [s] ctx56 [s] ctx57 [value] ctx58 [value] ctx59 [value] ctx60 [value] ctx61 [value] ctx62 [value] ctx63 [value] ctx64 [value] ctx65 [value] ctx66 [value] ctx67 [value] ctx68 [value] ctx69 [value] ctx70 [value] ctx71 [value] ctx72 [value] ctx73 [value] ctx74 [value] ctx75 [value] ctx76 [value] ctx77 [value] ctx78 [value] ctx79 [value] ctx80 [value] ctx81 [value] ctx82 [value] ctx83 [value] ctx84 [value] ctx85 [value] ctx86 [value] ctx87 [value] ctx88 [value] ctx89 [value] ctx90 [value] ctx91 [value] ctx92 [value] ctx93 [value] ctx94 [value] ctx95 [value] ctx96 [value] ctx97 [value] ctx98 [value] ctx99 [value] ctx100 [value] ctx101 [value] ctx102 [value] ctx103 [value] ctx104 [value] ctx105 [value] ctx106 [value] ctx107 [value] ctx108 [value] ctx109 [value] ctx110 [value] ctx111 [value] ctx112 [value] ctx113 [value] ctx114 [value] ctx115 [value] ctx116 [value] ctx117 [value] ctx118 [value] ctx119 [value] ctx120 [value] ctx121 [value] ctx122 [value] ctx123 [value] ctx124 [value] ctx125 [value] ctx126 [value] ctx127 [value] ctx128 [value] ctx129 [value] ctx130 [value] ctx131 [value] ctx132 [value] ctx133 [value] ctx134 [value] ctx135 [value] ctx136 [value] ctx137 [value] ctx138 [value] ctx139 [value] ctx140 [value] ctx141 [value] ctx142 [value] ctx143 [value] ctx144 [value] ctx145 [value] ctx146 [value] ctx147 [value] ctx148 [value] ctx149 [value] ctx150 [spec] ctx151 [
            series 
            value
        ] ctx152 [
            series1 
            series2
        ] ctx153 [
            series 
            value 
            only
        ] ctx154 [
            series 
            pattern 
            value 
            all local many? len pos
        ] ctx155 [
            body 
            safe local rule pos op sub end
        ] ctx156 [
            spec
        ] ctx157 [
            event 
            match? 
            rule 
            input 
            stack
        ] ctx158 [
            input 
            rules 
            case 
            part 
            limit
        ] ctx159 [
            path
        ] ctx160 [
            source 
            header 
            all 
            trap 
            next 
            position 
            part 
            length 
            into 
            out 
            as 
            type local codec suffix name mime result
        ] ctx161 [
            where 
            value 
            header 
            header-data 
            all 
            length 
            as 
            format local codec data suffix find-encoder? name pos header-str k v
        ] ctx162 [
            err-type 
            err-id 
            args local type id arg1 arg2 arg3
        ] ctx163 [
            str 
            n 
            left 
            with c
        ] ctx164 [
            a 
            b local r
        ] ctx165 [
            a 
            b local r
        ] ctx166 [value1] ctx167 [
            path local colon? slash? len i c dst
        ] ctx168 [file] ctx169 [
            dir
        ] ctx170 [local path] ctx171 [
            dir
        ] ctx172 [
            dir 
            col 
            n local list max-sz name
        ] ctx173 [
            path 
            deep local dirs end created dir
        ] ctx174 [
            series 
            width 
            index 
            pos 
            into 
            output
        ] ctx175 [local args pos unescape len e s] ctx176 [
            body 
            into 
            collected local keep rule pos
        ] ctx177 [
            path local file buffer flag
        ] ctx178 [
            series dlm local s 
            num
        ] ctx179 [
            path
        ] ctx180 [
            file 
            only 
            dir local out cnt f not-file?
        ] ctx181 [
            target local dir pos
        ] ctx182 [file local saved code new-path src] ctx183 [
            angle
        ] ctx184 [
            angle
        ] ctx185 [
            angle
        ] ctx186 [
            angle
        ] ctx187 [
            angle
        ] ctx188 [
            angle
        ] ctx189 [
            y 
            x
        ] ctx190 [
            number
        ] ctx191 [
            block
        ] ctx192 [
            version 
            build 
            words 
            platform 
            catalog 
            state 
            modules 
            codecs 
            schemes 
            ports 
            locale 
            options 
            script 
            standard 
            lexer 
            console 
            view 
            reactivity
        ] ctx194 [
            date 
            config
        ] ctx196 [] ctx197 [
            datatypes 
            actions 
            natives 
            errors
        ] ctx199 [
            throw 
            note 
            syntax 
            script 
            math 
            access 
            user 
            internal
        ] ctx201 [
            code 
            type 
            break 
            return 
            throw 
            continue
        ] ctx203 [
            code 
            type 
            no-load
        ] ctx205 [
            code 
            type 
            invalid 
            missing 
            no-header 
            no-rs-header 
            bad-header 
            malconstruct 
            bad-char
        ] ctx207 [
            code 
            type 
            no-value 
            need-value 
            not-defined 
            not-in-context 
            no-arg 
            expect-arg 
            expect-val 
            expect-type 
            cannot-use 
            invalid-arg 
            invalid-type 
            invalid-type-spec 
            invalid-op 
            no-op-arg 
            bad-op-spec 
            invalid-data 
            invalid-part 
            not-same-type 
            not-same-class 
            not-related 
            bad-func-def 
            bad-func-arg 
            bad-func-extern 
            no-refine 
            bad-refines 
            bad-refine 
            word-first 
            empty-path 
            invalid-path 
            invalid-path-set 
            invalid-path-get 
            bad-path-type 
            bad-path-set 
            bad-field-set 
            dup-vars 
            past-end 
            missing-arg 
            out-of-range 
            invalid-chars 
            invalid-compare 
            wrong-type 
            invalid-refine-arg 
            type-limit 
            size-limit 
            no-return 
            throw-usage 
            locked-word 
            bad-bad 
            bad-make-arg 
            bad-to-arg 
            invalid-spec-field 
            missing-spec-field 
            move-bad 
            too-long 
            invalid-char 
            parse-rule 
            parse-end 
            parse-invalid-ref 
            parse-block 
            parse-unsupported 
            parse-infinite 
            parse-stack 
            parse-keep 
            parse-into-bad 
            invalid-draw 
            invalid-data-facet 
            face-type 
            not-window 
            bad-window 
            not-linked 
            not-event-type 
            invalid-facet-type 
            vid-invalid-syntax 
            react-bad-func 
            react-not-enough 
            react-no-match 
            react-bad-obj 
            react-gctx 
            lib-invalid-arg
        ] ctx209 [
            code 
            type 
            zero-divide 
            overflow 
            positive
        ] ctx211 [
            code 
            type 
            cannot-open 
            invalid-utf8 
            no-connect
        ] ctx213 [
            code 
            type 
            message
        ] ctx215 [
            code 
            type 
            bad-path 
            not-here 
            no-memory 
            wrong-mem 
            stack-overflow 
            too-deep 
            feature-na 
            not-done 
            invalid-error 
            routines 
            red-system
        ] ctx217 [
            interpreted? 
            last-error 
            trace?
        ] ctx219 [] ctx220 [] ctx222 [] ctx224 [
            language 
            language* 
            locale 
            locale* 
            months 
            days
        ] ctx226 [
            boot 
            home 
            path 
            script 
            args 
            do-arg 
            debug 
            secure 
            quiet 
            binary-base 
            decimal-digits 
            module-paths 
            file-types 
            float 
            on-change* 
            on-deep-change*
        ] ctx228 [
            pretty? 
            full? 
            on-change*
        ] ctx230 [word old new] ctx231 [word old new] ctx232 [owner word target action new index part] ctx233 [
            title header parent path 
            args
        ] ctx235 [
            header 
            error
        ] ctx237 [
            title name type version date file author needs
        ] ctx239 [
            code type id arg1 arg2 arg3 near where stack
        ] ctx241 [
            pre-load 
            throw-error 
            make-hm 
            make-msf 
            make-hms 
            make-hmsf 
            make-time 
            make-binary 
            make-tuple 
            make-number 
            make-float 
            make-hexa 
            make-char 
            push-path 
            set-path 
            make-word 
            to-word 
            pop 
            store 
            new-line 
            transcode
        ] ctx243 [spec missing local type src pos] ctx244 [
            pos 
            hours 
            mins 
            secs 
            neg? local time
        ] ctx245 [
            stack 
            src 
            type
        ] ctx246 [stack local value pos] ctx247 [stack value local pos] ctx248 [
            src 
            dst 
            trap 
            one 
            only 
            part 
            length local 
            new s e c pos value cnt type process path 
            digit hexa-upper hexa-lower hexa hexa-char not-word-char not-word-1st 
            not-file-char not-str-char not-mstr-char caret-char 
            non-printable-char integer-end ws-ASCII ws-U+2k control-char 
            four half non-zero path-end base base64-char slash-end not-url-char 
            email-end pair-end file-end 
            cs stack count? old-line line make-string len make-file buffer byte ws newline-char counted-newline ws-no-count escaped-char char-rule line-string nested-curly-braces multiline-string string-rule tag-rule email-rule base-2-rule base-16-rule base-64-rule binary-rule file-rule url-rule symbol-rule ot begin-symbol-rule path-rule special-words word-rule get-word-rule lit-word-rule issue-rule refinement-rule sticky-word-rule hexa-rule tuple-value-rule tuple-rule time-rule value2 positive-integer-rule integer-number-rule neg? integer-rule float-special float-exp-rule float-number-rule float-rule map-rule block-rule paren-rule escaped-rule comment-rule wrong-end ending literal-value one-value any-value red-rules
        ] ctx249 [
            title 
            name 
            mime-type 
            suffixes 
            encode 
            decode
        ] ctx252 [
            title 
            name 
            mime-type 
            suffixes 
            encode 
            decode
        ] ctx255 [
            title 
            name 
            mime-type 
            suffixes 
            encode 
            decode
        ] ctx258 [
            title 
            name 
            mime-type 
            suffixes 
            encode 
            decode
        ] ctx261 [
            on-change*
        ] ctx263 [word old new] ctx264 [on-change* 
            on-deep-change*
        ] ctx266 [owner word target action new index part] ctx267 [
            relations 
            stack 
            queue 
            debug? 
            eval 
            eval-reaction 
            on-stack? 
            check 
            is~
        ] ctx269 [code safe local result] ctx270 [reactor reaction target] ctx271 [reactor reaction local p] ctx272 [reactor only field local pos reaction q] ctx273 [] ctx274 [local limit count obj field reaction target list] ctx275 [
            field 
            reaction local words obj rule item
        ] ctx276 [
            reactor 
            field 
            target local pos
        ] ctx277 [
            reaction 
            link 
            objects 
            unlink 
            src 
            later 
            with 
            ctx local objs found? rule item pos obj saved part path
        ] ctx278 [
            exec 
            protos 
            macros 
            stack 
            syms 
            depth 
            active? 
            trace? 
            s 
            do-quit 
            throw-error 
            syntax-error 
            do-safe 
            do-code 
            count-args 
            func-arity? 
            fetch-next 
            eval 
            do-macro 
            register-macro 
            reset 
            expand
        ] ctx280 [] ctx281 [error cmd code local w] ctx282 [s e] ctx283 [code manual with cmd local res t? src] ctx284 [code cmd local p] ctx285 [spec local total] ctx286 [spec with path local arity pos] ctx287 [code local base arity value path] ctx288 [code cmd local after expr] ctx289 [name pos arity local cmd saved p v res] ctx290 [spec local cnt rule p name macro pos] ctx291 [job] ctx292 [
            code job 
            clean local rule e pos cond value then else cases body keep? expr
        ] ctx293 [
            code 
            clean local job
        ] ctx311 [v only]]] [
        random 
        reflect 
        to 
        form 
        mold 
        modify 
        absolute 
        add 
        divide 
        multiply 
        negate 
        power 
        remainder 
        round 
        subtract 
        even? 
        odd? 
        and~ 
        complement 
        or~ 
        xor~ 
        append 
        at 
        back 
        change 
        clear 
        copy 
        find 
        head 
        head? 
        index? 
        insert 
        length? 
        move 
        next 
        pick 
        poke 
        put 
        remove 
        reverse 
        select 
        sort 
        skip 
        swap 
        tail 
        tail? 
        take 
        trim 
        read 
        write
    ] [+ add - subtract * multiply / divide // modulo %"" remainder = equal? <> not-equal? == strict-equal? =? same? < lesser? > greater? <= lesser-or-equal? >= greater-or-equal? << shift-left >> shift-right ">>>" shift-logical ** power 
        and and~ 
        or or~ 
        xor xor~ is ctx267~is~
    ] [datatype! 
        make unset! none! logic! block! string! integer! word! error! typeset! file! url! set-word! get-word! lit-word! refinement! binary! paren! char! issue! path! set-path! get-path! lit-path! native! action! op! function! routine! object! bitset! float! point! vector! map! hash! pair! percent! tuple! image! time! tag! email! handle! none set true false random reflect to form mold modify absolute add divide multiply negate power remainder round subtract even? odd? complement append at back change clear copy find head head? index? insert length? move next pick poke put remove reverse select sort skip swap tail tail? take trim read write if unless either any all while until loop repeat forever foreach forall remove-each func function does has switch case do reduce compose get print prin equal? not-equal? strict-equal? lesser? greater? lesser-or-equal? greater-or-equal? same? not type? stats bind in parse union unique intersect difference exclude complement? dehex negative? positive? max min shift to-hex sine cosine tangent arcsine arccosine arctangent arctangent2 NaN? zero? log-2 log-10 log-e exp square-root construct value? try uppercase lowercase as-pair break continue exit return throw catch extend debase enbase to-local-file wait checksum unset new-line new-line? context? set-env get-env list-env now sign? as call quit-return set-quiet browse shift-right shift-left shift-logical last-lf? get-current-dir set-current-dir create-dir exists? as-color as-ipv4 as-rgba write-stdout yes on no off tab cr newline lf escape slash sp space null crlf dot comma dbl-quote pi Rebol internal! number! scalar! any-word! any-list! any-path! any-block! any-function! any-object! any-string! series! immediate! default! any-type! aqua beige black blue brick brown coal coffee crimson cyan forest gold gray green ivory khaki leaf linen magenta maroon mint navy oldrab olive orange papaya pewter pink purple reblue rebolor red sienna silver sky snow tanned teal violet water wheat white yello yellow glass transparent routine also attempt comment quit empty? ?? probe quote first second third fourth fifth last spec-of body-of words-of class-of values-of bitset? binary? block? char? email? file? float? get-path? get-word? hash? integer? issue? lit-path? lit-word? logic? map? native? none? pair? paren? path? percent? refinement? set-path? set-word? string? tag? time? typeset? tuple? unset? url? word? image? handle? error? action? datatype? function? object? op? routine? vector? any-list? any-block? any-function? any-object? any-path? any-string? any-word? series? number? immediate? scalar? to-bitset to-binary to-block to-char to-email to-file to-float to-get-path to-get-word to-hash to-integer to-issue to-lit-path to-lit-word to-logic to-map to-native to-none to-pair to-paren to-path to-percent to-refinement to-set-path to-set-word to-string to-tag to-time to-typeset to-tuple to-unset to-url to-word to-image context alter offset? repend replace math charset p-indent on-parse-event parse-trace suffix? load save cause-error pad mod modulo eval-set-path to-red-file dir? normalize-dir what-dir change-dir list-dir make-dir extract extract-boot-args collect flip-exe-flag split dirize clean-path split-path do-file cos sin tan acos asin atan atan2 sqrt rejoin keys-of object halt system body version build date config words platform catalog datatypes actions natives errors code type note no-load syntax invalid missing no-header no-rs-header bad-header malconstruct bad-char script no-value need-value not-defined not-in-context no-arg expect-arg expect-val expect-type cannot-use invalid-arg invalid-type invalid-type-spec invalid-op no-op-arg bad-op-spec invalid-data invalid-part not-same-type not-same-class not-related bad-func-def bad-func-arg bad-func-extern no-refine bad-refines bad-refine word-first empty-path invalid-path invalid-path-set invalid-path-get bad-path-type bad-path-set bad-field-set dup-vars past-end missing-arg out-of-range invalid-chars invalid-compare wrong-type invalid-refine-arg type-limit size-limit no-return throw-usage locked-word bad-bad bad-make-arg bad-to-arg invalid-spec-field missing-spec-field move-bad too-long invalid-char parse-rule parse-end parse-invalid-ref parse-block parse-unsupported parse-infinite parse-stack parse-keep parse-into-bad invalid-draw invalid-data-facet face-type not-window bad-window not-linked not-event-type invalid-facet-type vid-invalid-syntax react-bad-func react-not-enough react-no-match react-bad-obj react-gctx lib-invalid-arg zero-divide overflow positive access cannot-open invalid-utf8 no-connect user message internal bad-path not-here no-memory wrong-mem stack-overflow too-deep feature-na not-done invalid-error routines red-system state interpreted? last-error trace? modules codecs schemes ports locale language language* locale* months days options boot home path args do-arg debug secure quiet binary-base decimal-digits module-paths file-types float pretty? full? on-change* on-deep-change* title header parent standard name file author needs error id arg1 arg2 arg3 near where stack lexer console view reactivity pre-load throw-error make-hm make-msf make-hms make-hmsf make-time make-binary make-tuple make-number make-float make-hexa make-char push-path set-path make-word pop store transcode + - * / // %"" = <> == =? < > <= >= << >> ">>>" ** and or xor png PNG mime-type suffixes encode decode jpeg JPEG bmp BMP gif GIF reactor! deep-reactor! relations queue debug? eval eval-reaction on-stack? check clear-reactions dump-reactions is react? react preprocessor exec protos macros syms depth active? s do-quit syntax-error do-safe do-code count-args func-arity? fetch-next do-macro register-macro reset expand expand-directives value1 value spec class values select-key* codec source mime Content-Type part one 
        else out length k v Windows dir limit list series pos keep flag src cs 
        digit hexa-upper hexa-lower hexa hexa-char not-word-char not-word-1st 
        not-file-char not-str-char not-mstr-char caret-char 
        non-printable-char integer-end ws-ASCII ws-U+2k control-char 
        four half non-zero path-end base64-char slash-end not-url-char email-end 
        pair-end file-end err owned only result p q obj field reaction target halt-request res macro word |
    ] [
        ctx42: get-root-node2 82 
        ctx43: get-root-node2 85 
        ctx44: get-root-node2 88 
        ctx45: get-root-node2 91 
        ctx46: get-root-node2 94 
        ctx47: get-root-node2 97 
        ctx48: get-root-node2 100 
        ctx49: get-root-node2 103 
        ctx50: get-root-node2 106 
        ctx51: get-root-node2 109 
        ctx52: get-root-node2 112 
        ctx53: get-root-node2 115 
        ctx54: get-root-node2 118 
        ctx55: get-root-node2 121 
        ctx56: get-root-node2 124 
        ctx57: get-root-node2 127 
        ctx58: get-root-node2 130 
        ctx59: get-root-node2 133 
        ctx60: get-root-node2 136 
        ctx61: get-root-node2 139 
        ctx62: get-root-node2 142 
        ctx63: get-root-node2 145 
        ctx64: get-root-node2 148 
        ctx65: get-root-node2 151 
        ctx66: get-root-node2 154 
        ctx67: get-root-node2 157 
        ctx68: get-root-node2 160 
        ctx69: get-root-node2 163 
        ctx70: get-root-node2 166 
        ctx71: get-root-node2 169 
        ctx72: get-root-node2 172 
        ctx73: get-root-node2 175 
        ctx74: get-root-node2 178 
        ctx75: get-root-node2 181 
        ctx76: get-root-node2 184 
        ctx77: get-root-node2 187 
        ctx78: get-root-node2 190 
        ctx79: get-root-node2 193 
        ctx80: get-root-node2 196 
        ctx81: get-root-node2 199 
        ctx82: get-root-node2 202 
        ctx83: get-root-node2 205 
        ctx84: get-root-node2 208 
        ctx85: get-root-node2 211 
        ctx86: get-root-node2 214 
        ctx87: get-root-node2 217 
        ctx88: get-root-node2 220 
        ctx89: get-root-node2 223 
        ctx90: get-root-node2 226 
        ctx91: get-root-node2 229 
        ctx92: get-root-node2 232 
        ctx93: get-root-node2 235 
        ctx94: get-root-node2 238 
        ctx95: get-root-node2 241 
        ctx96: get-root-node2 244 
        ctx97: get-root-node2 247 
        ctx98: get-root-node2 250 
        ctx99: get-root-node2 253 
        ctx100: get-root-node2 256 
        ctx101: get-root-node2 259 
        ctx102: get-root-node2 262 
        ctx103: get-root-node2 265 
        ctx104: get-root-node2 268 
        ctx105: get-root-node2 271 
        ctx106: get-root-node2 274 
        ctx107: get-root-node2 277 
        ctx108: get-root-node2 280 
        ctx109: get-root-node2 283 
        ctx110: get-root-node2 286 
        ctx111: get-root-node2 289 
        ctx112: get-root-node2 292 
        ctx113: get-root-node2 295 
        ctx114: get-root-node2 298 
        ctx115: get-root-node2 301 
        ctx116: get-root-node2 304 
        ctx117: get-root-node2 307 
        ctx118: get-root-node2 310 
        ctx119: get-root-node2 313 
        ctx120: get-root-node2 316 
        ctx121: get-root-node2 319 
        ctx122: get-root-node2 322 
        ctx123: get-root-node2 325 
        ctx124: get-root-node2 328 
        ctx125: get-root-node2 331 
        ctx126: get-root-node2 334 
        ctx127: get-root-node2 337 
        ctx128: get-root-node2 340 
        ctx129: get-root-node2 343 
        ctx130: get-root-node2 346 
        ctx131: get-root-node2 349 
        ctx132: get-root-node2 352 
        ctx133: get-root-node2 355 
        ctx134: get-root-node2 358 
        ctx135: get-root-node2 361 
        ctx136: get-root-node2 364 
        ctx137: get-root-node2 367 
        ctx138: get-root-node2 370 
        ctx139: get-root-node2 373 
        ctx140: get-root-node2 376 
        ctx141: get-root-node2 379 
        ctx142: get-root-node2 382 
        ctx143: get-root-node2 385 
        ctx144: get-root-node2 388 
        ctx145: get-root-node2 391 
        ctx146: get-root-node2 394 
        ctx147: get-root-node2 397 
        ctx148: get-root-node2 400 
        ctx149: get-root-node2 403 
        ctx150: get-root-node2 406 
        ctx151: get-root-node2 409 
        ctx152: get-root-node2 412 
        ctx153: get-root-node2 415 
        ctx154: get-root-node2 418 
        ctx155: get-root-node2 421 
        ctx156: get-root-node2 424 
        ctx157: get-root-node2 427 
        ctx158: get-root-node2 430 
        ctx159: get-root-node2 433 
        ctx160: get-root-node2 436 
        ctx161: get-root-node2 439 
        ctx162: get-root-node2 442 
        ctx163: get-root-node2 445 
        ctx164: get-root-node2 448 
        ctx165: get-root-node2 451 
        ctx166: get-root-node2 454 
        ctx167: get-root-node2 457 
        ctx168: get-root-node2 460 
        ctx169: get-root-node2 463 
        ctx170: get-root-node2 466 
        ctx171: get-root-node2 469 
        ctx172: get-root-node2 472 
        ctx173: get-root-node2 475 
        ctx174: get-root-node2 478 
        ctx175: get-root-node2 481 
        ctx176: get-root-node2 484 
        ctx177: get-root-node2 487 
        ctx178: get-root-node2 490 
        ctx179: get-root-node2 493 
        ctx180: get-root-node2 496 
        ctx181: get-root-node2 499 
        ctx182: get-root-node2 502 
        ctx183: get-root-node2 505 
        ctx184: get-root-node2 508 
        ctx185: get-root-node2 511 
        ctx186: get-root-node2 514 
        ctx187: get-root-node2 517 
        ctx188: get-root-node2 520 
        ctx189: get-root-node2 523 
        ctx190: get-root-node2 526 
        ctx191: get-root-node2 529 
        ctx192: get-root-node2 532 
        ctx194: get-root-node2 534 
        ctx196: get-root-node2 537 
        ctx197: get-root-node2 540 
        ctx199: get-root-node2 541 
        ctx201: get-root-node2 542 
        ctx203: get-root-node2 548 
        ctx205: get-root-node2 551 
        ctx207: get-root-node2 560 
        ctx209: get-root-node2 641 
        ctx211: get-root-node2 646 
        ctx213: get-root-node2 651 
        ctx215: get-root-node2 654 
        ctx217: get-root-node2 667 
        ctx219: get-root-node2 668 
        ctx220: get-root-node2 671 
        ctx222: get-root-node2 672 
        ctx224: get-root-node2 673 
        ctx226: get-root-node2 676 
        ctx228: get-root-node2 677 
        ctx230: get-root-node2 678 
        ctx231: get-root-node2 681 
        ctx232: get-root-node2 684 
        ctx233: get-root-node2 687 
        ctx235: get-root-node2 688 
        ctx237: get-root-node2 689 
        ctx239: get-root-node2 690 
        ctx241: get-root-node2 691 
        ctx243: get-root-node2 692 
        ctx244: get-root-node2 703 
        ctx245: get-root-node2 724 
        ctx246: get-root-node2 727 
        ctx247: get-root-node2 730 
        ctx248: get-root-node2 735 
        ctx249: get-root-node2 738 
        ctx252: get-root-node2 746 
        ctx255: get-root-node2 754 
        ctx258: get-root-node2 762 
        ctx261: get-root-node2 770 
        ctx263: get-root-node2 771 
        ctx264: get-root-node2 774 
        ctx266: get-root-node2 775 
        ctx267: get-root-node2 778 
        ctx269: get-root-node2 779 
        ctx270: get-root-node2 782 
        ctx271: get-root-node2 785 
        ctx272: get-root-node2 788 
        ctx273: get-root-node2 791 
        ctx274: get-root-node2 794 
        ctx275: get-root-node2 797 
        ctx276: get-root-node2 800 
        ctx277: get-root-node2 803 
        ctx278: get-root-node2 806 
        ctx280: get-root-node2 809 
        ctx281: get-root-node2 812 
        ctx282: get-root-node2 815 
        ctx283: get-root-node2 818 
        ctx284: get-root-node2 821 
        ctx285: get-root-node2 824 
        ctx286: get-root-node2 827 
        ctx287: get-root-node2 830 
        ctx288: get-root-node2 833 
        ctx289: get-root-node2 836 
        ctx290: get-root-node2 839 
        ctx291: get-root-node2 842 
        ctx292: get-root-node2 845 
        ctx293: get-root-node2 848 
        ctx311: get-root-node2 908
    ] 328 []]