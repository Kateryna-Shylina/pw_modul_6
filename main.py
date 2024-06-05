import sqlite3
import fill_data

def execute_query(sql: str, *parameters) -> list:
    with sqlite3.connect('University.sqlite') as con:
        cur = con.cursor()
        cur.execute(sql, (parameters))
        return cur.fetchall()
    

if __name__ == "__main__":
    
    with open('query_1.sql', 'r') as f:
        sql = f.read()
        print('query_1.sql')
        print(execute_query(sql))

    with open('query_2.sql', 'r') as f:
        sql = f.read()
        print('query_2.sql')
        param = input("For which subject would you like to find a student? ")
        print(execute_query(sql, param))

    with open('query_3.sql', 'r') as f:
        sql = f.read()
        print('query_3.sql')
        param = input("For which subject would you like to find an avarage mark for each group? ")
        print(execute_query(sql, param))

    with open('query_4.sql', 'r') as f:
        sql = f.read()
        print('query_4.sql')
        print(execute_query(sql))

    with open('query_5.sql', 'r') as f:
        sql = f.read()
        print('query_5.sql')
        param = input("For which teacher would you like to find subjects? ")
        print(execute_query(sql, param))
    
    with open('query_6.sql', 'r') as f:
        sql = f.read()
        print('query_6.sql')
        param = input("For which group would you like to find a students? ")
        print(execute_query(sql, param))
    
    with open('query_7.sql', 'r') as f:
        sql = f.read()
        print('query_7.sql')
        param1 = input("For which subject would you like to find marks of students? ")
        param2 = input("For which group would you like to find marks of students? ")       
        print(execute_query(sql, param1, param2))
    
    with open('query_8.sql', 'r') as f:
        sql = f.read()
        print('query_8.sql')
        param = input("For which teacher would you like to find an avarage mark? ")
        print(execute_query(sql, param))

    with open('query_9.sql', 'r') as f:
        sql = f.read()
        print('query_9.sql')
        param = input("For which student would you like to find subjects? ")
        print(execute_query(sql, param))

    with open('query_10.sql', 'r') as f:
        sql = f.read()
        print('query_10.sql')
        param1 = input("For which student would you like to find subjects? ")
        param2 = input("For which teacher would you like to find subjects? ")       
        print(execute_query(sql, param1, param2))

    with open('query_11.sql', 'r') as f:
        sql = f.read()
        print('query_11.sql')
        param1 = input("For which student would you like to find an avarage mark? ")
        param2 = input("For which teacher would you like to find an avarage mark? ")       
        print(execute_query(sql, param1, param2))

    with open('query_12.sql', 'r') as f:
        sql = f.read()
        print('query_12.sql')
        param1 = input("For which group would you like to find marks? ")
        param2 = input("For which subject would you like to find marks? ")       
        print(execute_query(sql, param1, param2))