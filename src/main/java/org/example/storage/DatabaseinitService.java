package org.example.storage;

import org.flywaydb.core.Flyway;

public class DatabaseinitService {
    public void initDb() {
//         Create the Flyway instance and point it to the database

        Flyway flyway = Flyway
                .configure()
                .dataSource(StorageConstants.CONNECTION_URL, null, null)
                .load();

        // Start the migration
        flyway.migrate();
    }
}

