from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os

SQLALCHEMY_DATABASE_URL = "postgresql://assignment10_2_user:h8ecleDDZNIyvVo85oIGwQVDfKLkMyJp@dpg-cru1qcij1k6c73e0upkg-a.oregon-postgres.render.com/assignment10_2"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()
