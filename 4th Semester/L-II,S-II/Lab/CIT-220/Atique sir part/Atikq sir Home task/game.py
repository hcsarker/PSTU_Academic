import pygame
import time
import random

# Initialize Pygame
pygame.init()

# Set the screen size
screen_width = 800
screen_height = 600
screen = pygame.display.set_mode((screen_width, screen_height))

# Set the colors
white = (255, 255, 255)
black = (0, 0, 0)
red = (255, 0, 0)

# Set the font
font = pygame.font.SysFont(None, 25)

# Set the block size and the snake speed
block_size = 10
snake_speed = 5

# Define the function to display the score
def display_score(score):
    value = font.render("Score: " + str(score), True, white)
    screen.blit(value, [0, 0])

# Define the main function
def gameLoop():

    # Set the game over variable to False
    game_over = False

    # Set the direction variables
    lead_x = screen_width / 2
    lead_y = screen_height / 2
    lead_x_change = 0
    lead_y_change = 0

    # Set the initial food position
    food_x = round(random.randrange(0, screen_width - block_size) / 10.0) * 10.0
    food_y = round(random.randrange(0, screen_height - block_size) / 10.0) * 10.0

    # Set the initial snake length and score
    snake_length = 1
    score = 0

    # Set the clock
    clock = pygame.time.Clock()

    # Start the game loop
    while not game_over:

        # Handle the events
        for event in pygame.event.get():

            # If the user quits the game, set the game over variable to True
            if event.type == pygame.QUIT:
                game_over = True

            # If the user presses a key, change the direction of the snake
            if event.type == pygame.KEYDOWN:
                if event.key == pygame.K_LEFT:
                    lead_x_change = -block_size
                    lead_y_change = 0
                elif event.key == pygame.K_RIGHT:
                    lead_x_change = block_size
                    lead_y_change = 0
                elif event.key == pygame.K_UP:
                    lead_y_change = -block_size
                    lead_x_change = 0
                elif event.key == pygame.K_DOWN:
                    lead_y_change = block_size
                    lead_x_change = 0

        # Check if the snake hits the boundaries
        if lead_x >= screen_width or lead_x < 0 or lead_y >= screen_height or lead_y < 0:
            game_over = True

        # Update the snake's position
        lead_x += lead_x_change
        lead_y += lead_y_change

        # Fill the screen with black color
        screen.fill(black)

        # Draw the snake
        snake_head = []
        snake_head.append(lead_x)
        snake_head.append(lead_y)
        snake_list = []
        snake_list.append(snake_head)
        if len(snake_list) > snake_length:
            del snake_list[0]

        for x in snake_list[:-1]:
            if x == snake_head:
                game_over = True

        for block in snake_list:
            pygame.draw.rect(screen, white, [block[0], block[1], block_size, block_size])

        # Draw the food
        pygame.draw.rect(screen, red, [food_x, food_y, block_size, block_size])

        # Check if the snake eats the food
       
        if lead_x == food_x and lead_y == food_y:
            food_x = round(random.randrange(0, screen_width - block_size) / 10.0) * 10.0
            food_y = round(random.randrange(0, screen_height - block_size) / 10.0) * 10.0
            snake_length += 1
            score += 20

        # Display the score
        display_score(score)

        # Update the display
        pygame.display.update()

        # Set the clock speed
        clock.tick(snake_speed)

    # Quit Pygame and Python
    pygame.quit()
    quit()

# Call the main function
gameLoop()
