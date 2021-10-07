#Program makes a simple calculator
# **********Function Declaration***********
def add(x, y):
    return x+y

def subtract(x, y):
    return x-y

def multiply(x, y):
    return x*y

def divide(x, y):
    return x/y

# ********** body ************
while True:
    print("=====================")
    print("Select operation.")
    print("0. Exit")
    print("1. Add")
    print("2. Subtract")
    print("3. Multiply")
    print("4. Divide")

# Take input from the user
    choice = input("Enter choice(0/1/2/3/4): ")
    if choice == '0':
        break
    if (choice < '0') or (choice >'4'):
        print("Invalid input")
        continue

    num1 = float(input("Enter first number: "))
    num2 = float(input("Enter second number : "))

    if choice == '1':
        print(num, "+", num2, "=", add(num1, num2))

    elif choice == '2':
        print(num, "-", num2, "=", subtract(num1, num2))
        
    elif choice == "3":
        print(num, "*", num2, "=", multiply(num1, num2))

    else:
        print(num, "/", num2, "=", divide(num1, num2))
