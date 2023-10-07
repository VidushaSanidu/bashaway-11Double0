checkStrength(){
    
    local password="$1"

    if [ ${#password} -lt 8 ]; then
        return false
    fi

    if ! [[ "$password" =~ [A-Z] ]]; then
        return false
    fi

    if ! [[ "$password" =~ [a-z] ]]; then
        return false
    fi

    if ! [[ "$password" =~ [0-9] ]]; then
        return false
    fi

    if ! [[ "$password" =~ [!@#$%^&*(),.?\":{}|<>] ]]; then
        return false
    fi

    return true
}

checkStrength "$1"