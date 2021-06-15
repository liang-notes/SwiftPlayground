

var testArray1 = generateRandomArray(maxSize: 8, maxValue: 10)
testBubbleSort(testArray: &testArray1)

var testArray2 = generateRandomArray(maxSize: 8, maxValue: 10)
testSelectionSort(testArray: &testArray2)

var testArray3 = generateRandomArray(maxSize: 8, maxValue: 10)
testHeapSort(testArray: &testArray3)

var testArray4 = generateRandomArray(maxSize: 8, maxValue: 10)
testQuickSort(testArray: &testArray4)

var testArray5 = generateRandomArray(maxSize: 8, maxValue: 10)
testMergeSort(testArray: &testArray5)
