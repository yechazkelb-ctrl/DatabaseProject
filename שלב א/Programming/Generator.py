import csv
import random
from datetime import datetime, timedelta

# Words list
adjectives = [
    "Mega", "Ultra", "Dark", "Swift", "Epic", "Pro", "Shadow", "Neon", "Cyber", "Global",
    "Iron", "Silver", "Golden", "Hidden", "Silent", "Rapid", "Cool", "Mighty", "Alpha", "Omega",
    "Delta", "Prime", "Elite", "Legendary", "Wild", "Crazy", "Super", "Master", "Logic", "Pixel",
    "Vector", "Binary", "Quantum", "Static", "Dynamic", "Turbo", "Hyper", "Sonic", "Frost", "Blaze",
    "Void", "Zen", "Titan", "Solar", "Lunar", "Ace", "Grand", "Atomic", "Cloud", "Ghost"
]

# Nouns list
nouns = [
    "Dev", "Coder", "Slayer", "Blade", "Ghost", "Knight", "Hunter", "Wizard", "Eagle", "Wolf",
    "Tiger", "Lion", "Shark", "Snake", "Falcon", "Dragon", "Bot", "User", "Gamer", "Player",
    "Maker", "Builder", "Hero", "Villain", "Star", "Planet", "Storm", "Thunder", "Shadow", "Light",
    "Core", "Node", "Shell", "Script", "Code", "Byte", "Bit", "Pixel", "Link", "Chain",
    "Fort", "Base", "Zone", "Field", "Sky", "Ocean", "Mountain", "Forest", "River", "Coast"
]

# Domains examples
domains = ["gmail.com", "outlook.com", "devstore.io", "protonmail.com", "yahoo.com"]

# Function to generate a nickname based on a random word from each one
def generate_nickname():
    adj = random.choice(adjectives)
    noun = random.choice(nouns)
    num = random.randint(10, 9999)
    return f"{adj}{noun}_{num}"

# Function to generate all the data
def generate_data():

    # Create a table to store the users and also the nicknames to not overlap
    users = []
    seen_nicknames = set()
    
    # Generate all of them, from 1 to 20000
    print("Generating 20,000 unique users...")
    for i in range(1, 20001):
        nick = generate_nickname()

        # If already seen - again, till not
        while nick in seen_nicknames:
            nick = generate_nickname()
        seen_nicknames.add(nick)
        email = f"{nick.lower()}@{random.choice(domains)}"
        users.append([i, email, nick])
    
    # After finishing setting all the users - write it to CSV format
    with open('users.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['UserID', 'Email', 'Nickname'])
        writer.writerows(users)

    # Create a table to store the reviews and also the dates to not overlap
    reviews = []
    start_date = datetime(2024, 1, 1)
    
    # Templates with words we can fill based on the random generator
    review_templates = [
        "The {adj} {noun} asset is amazing!",
        "Perfect for my project, {adj} quality.",
        "Saved me so much time on my {noun} logic.",
        "Highly recommended for any {noun} developer.",
        "The best {adj} asset I've bought this year.",
        "Works out of the box, very {adj} performance.",
        "Great value for money, 10/10.",
        "Excellent documentation and support."
    ]

    # Generate all of them, from 1 to 20000
    print("Generating 20,000 reviews...")
    for i in range(1, 20001):
        r_date = (start_date + timedelta(days=random.randint(0, 400))).strftime('%Y-%m-%d')
        rating = random.choices([5, 4, 3, 2, 1], weights=[50, 30, 10, 5, 5])[0]
        content = random.choice(review_templates).format(
            adj=random.choice(adjectives).lower(),
            noun=random.choice(nouns).lower()
        )
        buyer_id = random.randint(1, 20000)
        asset_id = random.randint(1, 500)
        reviews.append([i, r_date, rating, content, buyer_id, asset_id])

    # After finishing setting all the reviews - write it to CSV format
    with open('reviews.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['ReviewID', 'ReviewDate', 'Rating', 'Content', 'BuyerID', 'AssetID'])
        writer.writerows(reviews)

    # Output that it's done
    print("Done! Files 'users.csv' and 'reviews.csv' are ready.")

# Main function - to generate
if __name__ == "__main__":
    generate_data()