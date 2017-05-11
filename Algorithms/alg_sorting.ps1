class Sort {
    static [int64[]] InsertionSort ([int64[]]$input) {
        for ($i = 1; $i -lt $input.count; $i++) {
            $x = $input[$i]
            $j = $i - 1
            while ($j -ge 0 -and $input[$j] -gt $x) {
                $input[$j+1] = $input[$j]
                $j--
            }
            $input[$j+1] = $x
        }
        return $input
    }

    static [int32[]] InsertionSort ([int32[]]$input) {
        return [Sort]::InsertionSort(([int64[]]$input))
    }

    static [char[]] InsertionSort ([char[]]$input) {
        return [Sort]::InsertionSort(([int64[]]$input))
    }

    static [byte[]] InsertionSort ([byte[]]$input) {
        return [Sort]::InsertionSort(([int64[]]$input))
    }

    static [int64[]] SelectionSort ([int64[]]$input) {
        for ($i = 0; $i -lt ($input.Count - 1); $i++){
            $currentMin = $i
            for ($j = $i+1; $j -lt $input.Count; $j++) {
                if ($input[$j] -lt $input[$currentMin]) {
                    $currentMin = $j
                }
            }
            if ($currentMin -ne $i) {
                $currentValue = $input[$i]
                $input[$i] = $input[$currentMin]
                $input[$currentMin] = $currentValue
            }
        }
        return $input
    }
}