echo "Exam score:"
read examScore


if ! [[ "$examScore" =~ ^[0-9]+$ ]]; then
    echo "Error: Input is not a valid number."
    exit 1
fi


if (( $examScore < 0 || $examScore > 100 )); then
    echo "Error: Score must be between 0 and 100."
    exit 1
fi


case $examScore in
    [9][0-9] | 100) grade="A" ;;
    [8][0-9]) grade="B" ;;      
    [7][0-9]) grade="C" ;;      
    [6][0-9]) grade="D" ;;      
    *) grade="F" ;;              
esac


echo "Grade $grade"
