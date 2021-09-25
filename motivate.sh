# Quote of the day bash version
# Sergei Korneev 2021

quotesfile="$PWD/quotes.txt"


if [ -f "$quotesfile"  ]; then
	qcount=$(wc -l "$quotesfile"| sed "s, .*,,g" )
	showline=$(shuf -i 1-$qcount -n 1)
	echo ----
        head -n $showline "$quotesfile" | tail -n +$showline
	echo ----
fi

