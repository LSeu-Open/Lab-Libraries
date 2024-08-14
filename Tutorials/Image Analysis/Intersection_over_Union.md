# Intersection over Union (IoU): Evaluating Segmentation Algorithm Performance

## Table of Contents
- [What is Intersection over Union (IoU) ?](#what-is-intersection-over-union-iou)
- [IoU Threshold](#iou-threshold)
- [F1 Score](#f1-score)
- [Intersection over Union (IoU) for Cell Segmentation example](#intersection-over-union-iou-for-cell-segmentation-example)


## What is Intersection over Union (IoU) ?

Intersection over Union (IoU) is an evaluation metric used to **measure the accuracy of a segmentation algorithm** on a particular dataset.

You’ll typically find Intersection over Union used to evaluate the performance of various segmentation algorithms, including traditional methods like Watershed and modern deep learning approaches such as U-Net, Mask R-CNN, and others; however, keep in mind that the actual algorithm used to generate the predictions doesn’t matter.

Intersection over Union is simply an evaluation metric. Any algorithm that provides predicted segmentation masks as output can be evaluated using IoU.

More formally, in order to apply Intersection over Union to evaluate an (arbitrary) segmentation algorithm, we need:

- The ground-truth segmentation masks (i.e., the hand-labeled masks from the testing set that specify where in the image our cells are).
- The predicted segmentation masks from our model.


> As long as we have these two sets of masks, we can apply Intersection over Union.

Computing the Intersection over Union is as simple as dividing the area of overlap between the segmentation masks by the area of union.

<div align="center">
<img src="https://b2633864.smushcdn.com/2633864/wp-content/uploads/2016/09/iou_equation.png?lossy=2&strip=1&webp=1" alt="IOUmath" width="300"/>
</div>

Examining this equation, you can see that Intersection over Union is simply a ratio.

In the numerator, we compute the area of overlap between the predicted segmentation mask and the ground-truth segmentation mask.

The denominator is the area of union, or more simply, the area encompassed by both the predicted segmentation mask and the ground-truth segmentation mask.

Dividing the area of overlap by the area of union yields our final score — the Intersection over Union.

## IoU Threshold

The IoU threshold is a critical parameter used to determine whether a predicted segmentation mask is considered a true positive, false positive, or false negative. This threshold is typically set based on the specific requirements of the application.

### What is the IoU Threshold ?

The IoU threshold is a value between 0 and 1 that defines the minimum acceptable overlap between the predicted segmentation mask and the ground-truth segmentation mask for a prediction to be considered correct.

- **True Positive (TP)**: A predicted mask is considered a true positive if the IoU between the predicted mask and the ground-truth mask is greater than or equal to the threshold.
- **False Positive (FP)**: A predicted mask is considered a false positive if the IoU is below the threshold.
- **False Negative (FN)**: A ground-truth mask that does not have a corresponding predicted mask with an IoU above the threshold is considered a false negative.

### Why is the IoU Threshold Important ?

The IoU threshold helps in balancing precision and recall. A higher threshold ensures that only highly accurate predictions are considered true positives, but it may also increase the number of false negatives. Conversely, a lower threshold may increase the number of true positives but at the risk of including more false positives.

### Example

Suppose we set an IoU threshold of 0.5. This means that for a predicted segmentation mask to be considered a true positive, it must overlap with the ground-truth mask by at least 50%.

- **IoU = 0.6**: This prediction is a true positive because it exceeds the threshold.
- **IoU = 0.4**: This prediction is a false positive because it falls below the threshold.

### Practical Considerations

- **Application-Specific**: The choice of IoU threshold can depend on the specific application. For example, in medical imaging, a higher threshold might be used to ensure high accuracy.
- **Evaluation Metrics**: The IoU threshold directly impacts evaluation metrics such as precision, recall, and F1 score.

By understanding and appropriately setting the IoU threshold, you can better evaluate the performance of your segmentation algorithm and make informed decisions about its effectiveness.

## F1 Score

The F1 score is a metric that combines both precision and recall to provide a single measure of a model's accuracy. It is particularly useful when you need to balance the trade-off between precision and recall.

### What is the F1 Score?

The F1 score is the harmonic mean of precision and recall. It is calculated using the following formula:

$F1 = 2 * (Precision * Recall)/(Precision * Recall)$

- **Precision**: The ratio of true positive predictions to the total number of positive predictions (true positives + false positives).
- **Recall**: The ratio of true positive predictions to the total number of actual positives (true positives + false negatives).

### Why is the F1 Score Important?

The F1 score is important because it provides a balanced measure of a model's performance, especially when dealing with imbalanced datasets. It gives equal weight to both precision and recall, ensuring that neither is unduly favored.

### Example

Suppose we have the following values:

- Precision = 0.8
- Recall = 0.6

The F1 score would be calculated as:

$F1 = 2 * (0.8 * 0.6)/(0.8 + 0.6) = 0.6857$

### Practical Considerations

- **Imbalanced Datasets**: The F1 score is particularly useful for evaluating models on imbalanced datasets, where the number of positive and negative samples is not equal.
- **Threshold Sensitivity**: The F1 score can be sensitive to the IoU threshold, as changes in the threshold can affect the number of true positives, false positives, and false negatives.

By using the F1 score, you can get a more comprehensive understanding of your model's performance, especially in scenarios where both precision and recall are important.


## Intersection over Union (IoU) for Cell Segmentation example

To illustrate how we can use Intersection over Union (IoU) for Cell Segmentation, i will use the [Cellpose 3.0 Paper](https://www.biorxiv.org/content/10.1101/2024.02.10.579780v1.full.pdf) figure S5.

<div align="center">
<img src="https://www.biorxiv.org/content/biorxiv/early/2024/02/12/2024.02.10.579780/F10.large.jpg" alt="IOUcellpose" width="800"/>
</div>

(a) Examples of three images from each test set (comprising bright-field and phase-contrast imagery, combined), overlaid with ground-truth segmentations in purple and super-generalist Cellpose 3 model segmentations in yellow.

(b) Segmentation performance on the various test sets, averaged across all test images, for the super-generalist Cellpose 3 model, dataset-specific models, and a transformer model trained on all datasets. The **AP@0.5 metric** represents the average precision of segmentation at an **IoU threshold of 0.5**.
