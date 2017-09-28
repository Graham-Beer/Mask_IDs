Function ConvertTo-MaskedId ($id) { 
    ($id -split '' | % { 
        if ($_ -ne '-') {
            $_ -replace $_, 'x'
        } else {
            $_
        }
    }) -join ''
}
