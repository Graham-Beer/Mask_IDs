Function ConvertTo-MaskedCode ($id) { 
    ($id -split '' | % { 
        if ($_ -ne '-') {
            $_ -replace $_, 'x'
        } else {
            $_
        }
    }) -join ''
}