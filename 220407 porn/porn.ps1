# Are you eligible to enjoy porn?

Set-StrictMode -Version Latest

[int]$threshold = 18


function validate ([int]$val) {
    function is_valid {
        # バリデーションチェック
        if ($inputValue -is [int]) {
            # 整数？
            if ($inputValue -gt 0) {
                # 0歳以上
                return $true # OK!
            }
            else {
                return $false
            }
        }
        else {
            return $false
        }
    }

    if (is_valid) {
        $realAge = [int]$val
    }
    else {
        Write-Host "enter right number"
        exit
    }
}

function userInput {
    [string]$inputValue = (Read-Host "plz enter ur REAL age")
    return $inputValue
}

function is_adult {
    if ($realAge -gt $threshold) {
        return $true
    }
    else {
        return $false
    }
} 

validate(userInput);

if (is_adult) {
    Write-Host "you can enjoy some kind of porn"
    exit
}
else {
    Write-Host "plz go back"
    exit
}

