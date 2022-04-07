# Are you eligible to enjoy porn?

Set-StrictMode -Version Latest


## $global:realAge = $null

function userInput {
    [String] $inputValue = (Read-Host "plz enter ur REAL age")
    return $inputValue
}

$inputValue = userInput      # 入力を $inputValue に代入

# デバッグ用
# $result = canCast($inputValue)
# Write-Host $result

function getRealAge ([string] $s) {

    function is_valid {
        function canCast ($s) {     # 入力値から整数型にキャスト可能か
            [int] $i = 0
            try {
                $i = [int] $s
                return $true
            } catch {
                return $false
            }
        }

        if ((canCast $s) -and ([int] $s -gt -1)) {    # キャスト可能かつ0歳以上
            return $true
        } else {
            return $false
        }
    }

    if (is_valid) {     # 問題なければ整数値を返す
        $global:realAge = [int] $s
        # $global:realAge.GetType()
        # return $global:realAge
    } else {
        Write-Host "Error: invalid number input"
        exit
    }
}

getRealAge $inputValue      # 引数を基に正当性チェック


function judge ($value) {
    function is_adult ([int] $value, [int] $threshold){     # $threshold を基に判定
        if ($value -gt $threshold - 1) {
            return $true
        } else {
            return $false
        }
    } 

    if (is_adult $value 18 ) {
        Write-Host "welcome to porn world"
        # exit
    } else {
        Write-Host "plz go back"
        # exit
    }
}

judge $global:realAge   # 判定 


# Write-Host $global:realAge
# $global:realAge.GetType()
