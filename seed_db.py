import pandas as pd
from faker import Faker
fake = Faker(['pt_BR'])

sqls = []

for i in range(20):
    nome = fake.name()
    cpf = fake.ssn()
    tel = fake.msisdn()
    email = fake.email()
    endereco = fake.address()
    sql = "INSERT INTO clientes VALUES('{}', '{}', '{}', '{}', '{}');".format(nome, cpf, tel, email, endereco)
    sqls.append(sql)

with open('insert.sql', 'w') as f:
    for i, sql in enumerate(sqls):
        f.write(sql)