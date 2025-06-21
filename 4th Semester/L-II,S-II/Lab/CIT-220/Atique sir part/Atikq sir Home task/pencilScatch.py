import cv2

# Load the image
image = cv2.imread("G:\H.jpg")

# Convert the image to grayscale
gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

# Invert the grayscale image
inverted_gray = 255 - gray

# Apply a blur to the inverted image
blurred = cv2.GaussianBlur(inverted_gray, (21, 21), 0)

# Invert the blurred image
inverted_blurred = 255 - blurred

# Create the final sketch by dividing the grayscale image by the inverted blurred image
sketch = cv2.divide(gray, inverted_blurred, scale=256.0)

# Display the sketch and the original image side by side
cv2.imshow('Photo Sketch', sketch)
cv2.imshow('Original Image', image)

# Wait for a key press to exit
cv2.waitKey(0)
cv2.destroyAllWindows()
