-- Setup account table
CREATE TABLE account (
  id UUID PRIMARY KEY,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL
);

-- Setup contact table
CREATE TABLE contact (
  id UUID PRIMARY KEY,
  name TEXT NOT NULL,
  nickname TEXT,
  job_title TEXT,
  organization TEXT,
  birthday DATE,
  relationship TEXT,
  notes TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  account_id UUID REFERENCES account(id) NOT NULL,
  is_self BOOLEAN DEFAULT false NOT NULL
);

-- Setup category table
CREATE TABLE category (
  id UUID PRIMARY KEY,
  name TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  account_id UUID REFERENCES account(id) NOT NULL
);

-- Setup contact_category table
CREATE TABLE contact_category (
  category_id UUID REFERENCES category(id) NOT NULL,
  contact_id UUID REFERENCES contact(id) NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  PRIMARY KEY (category_id, contact_id)
);

-- Setup country table
CREATE TABLE country (
  id UUID PRIMARY KEY,
  country_code TEXT NOT NULL,
  name TEXT NOT NULL,
  calling_code TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL
);

-- Setup phone table
CREATE TABLE phone (
  id UUID PRIMARY KEY,
  number TEXT NOT NULL,
  label TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  contact_id UUID REFERENCES contact(id) NOT NULL,
  country_id UUID REFERENCES country(id) NOT NULL
);

-- Setup address table
CREATE TABLE address (
  id UUID PRIMARY KEY,
  line_1 TEXT NOT NULL,
  line_2 TEXT,
  line_3 TEXT,
  postal_code TEXT NOT NULL,
  city TEXT NOT NULL,
  state TEXT NOT NULL,
  label TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  contact_id UUID REFERENCES contact(id) NOT NULL,
  country_id UUID REFERENCES country(id) NOT NULL
);

-- Setup email table
CREATE TABLE email (
  id UUID PRIMARY KEY,
  address TEXT NOT NULL,
  label TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  contact_id UUID REFERENCES contact(id) NOT NULL
);