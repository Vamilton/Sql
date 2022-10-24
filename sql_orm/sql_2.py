import sqlalchemy as sq
from sqlalchemy.orm import declarative_base, relationship, sessionmaker
from sql_orm import create_tables, Pub, Shop, Book, Stock, Sale
import re
import json

Base = declarative_base()
DSN = 'postgresql://postgres:fyikfu77@localhost:5432/lastHomework'
engine = sq.create_engine(DSN)
Session = sessionmaker(bind=engine)
session = Session()

with open('tests_data.json', 'r') as fd:
    data = json.load(fd)

for record in data:
    model = {
        'publisher': Pub,
        'shop': Shop,
        'book': Book,
        'stock': Stock,
        'sale': Sale,
    }[record.get('model')]
    session.add(model(id=record.get('pk'), **record.get('fields')))
session.commit()


query = session.query(Shop)
query = query.join(Stock, Shop.id == Stock.id_shop)
query = query.join(Book, Book.id == Stock.id_book)
query = query.join(Pub, Book.id_publisher == Pub.id)

pub_name = input('Какой издатель?')
if re.fullmatch(r'\d+', pub_name):
    for i in query.filter(Pub.id == pub_name):
        print(i)
else:
    for i in query.filter(Pub.name == pub_name):
        print(i)













