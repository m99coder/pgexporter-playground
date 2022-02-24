-- re-create database
DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
\c test;

-- create extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- create table
CREATE TABLE events (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  source text,
  target text,
  payload text,
  created_at timestamp WITH time zone NOT NULL,
  updated_at timestamp WITH time zone,
  finished_at timestamp WITH time zone
);
