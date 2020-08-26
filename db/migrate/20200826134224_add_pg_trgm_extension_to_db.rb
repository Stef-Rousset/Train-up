class AddPgTrgmExtensionToDb < ActiveRecord::Migration[6.0]
 execute "create extension pg_trgm;"
end
