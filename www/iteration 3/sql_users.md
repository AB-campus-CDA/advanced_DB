Pré requis: être connecté au serveur mysql avec les droits suffisants

# créer un user qui a tout les droits sur toutes les tables de toutes les bases

les privilèges peuvent être :
```sql
CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD, ALL PRIVILEGES
```

```sql
CREATE USER 'Admin'@'localhost' IDENTIFIED BY 'admin_pw';
GRANT ALL PRIVILEGES ON *.* TO 'Admin'@'localhost';
FLUSH PRIVILEGES
```

# créer un user qui a seulement le droit de lectures sur toutes les tables d'une seule base

```sql
CREATE USER 'Viewer'@'localhost' IDENTIFIED BY 'viewer_pw';
GRANT SELECT ON query_playground.*  TO 'Viewer'@'localhost';
FLUSH PRIVILEGES
```

# créer un user ayant les droits de lecture et d'écriture sur une seule table

```sql
CREATE USER 'Writer'@'localhost' IDENTIFIED BY 'writer_pw';
GRANT SELECT, INSERT ON query_playground.products TO 'Writer'@'localhost';
FLUSH PRIVILEGES
```
