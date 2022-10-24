import sqlalchemy as sq
from sqlalchemy.orm import declarative_base, relationship, sessionmaker
Base = declarative_base()

class Pub(Base):
    __tablename__ = 'publisher'
    id = sq.Column(sq.Integer, primary_key=True)
    name = sq.Column(sq.String(length=100), unique=True)


    def __str__(self):
        return self.name

class Shop(Base):
    __tablename__ = 'shop'
    id = sq.Column(sq.Integer, primary_key=True)
    name = sq.Column(sq.String(length=100), unique=True)

    def __str__(self):
        return self.name

class Book(Base):
    __tablename__ = 'book'
    id = sq.Column(sq.Integer, primary_key=True)
    title = sq.Column(sq.String(length=100), unique=True)
    id_publisher = sq.Column(sq.Integer, sq.ForeignKey("publisher.id"), nullable=False)
    publisher = relationship(Pub, backref="homeworks")

    def __str__(self):
        return self.title

class Stock(Base):
    __tablename__ = 'stock'
    id = sq.Column(sq.Integer, primary_key=True)
    count = sq.Column(sq.Integer)
    id_book = sq.Column(sq.Integer, sq.ForeignKey("book.id"), nullable=False)
    id_shop = sq.Column(sq.Integer, sq.ForeignKey("shop.id"), nullable=False)
    book = relationship(Book, backref="homeworks")
    shop = relationship(Shop, backref="homeworks")


    def __str__(self):
        return self.count

class Sale(Base):
    __tablename__ = 'sale'
    id = sq.Column(sq.Integer, primary_key=True)
    price = sq.Column(sq.String, nullable=False)
    count = sq.Column(sq.Integer, nullable=False)
    date_sale = sq.Column(sq.Date, nullable=False)
    id_stock = sq.Column(sq.Integer, sq.ForeignKey("stock.id"), nullable=False)
    stock = relationship(Stock, backref="homeworks")

def create_tables(engine):
    Base.metadata.drop_all(engine)
    Base.metadata.create_all(engine)

DSN = 'postgresql://postgres:fyikfu77@localhost:5432/lastHomework'
engine = sq.create_engine(DSN)
create_tables(engine)

