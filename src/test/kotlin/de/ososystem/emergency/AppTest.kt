package de.ososystem.emergency

import org.junit.Test
import org.junit.jupiter.api.extension.ExtendWith
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.test.context.ActiveProfiles
import org.springframework.test.context.junit.jupiter.SpringExtension

@SpringBootTest(classes=[App::class])
@ExtendWith(SpringExtension::class)
@ActiveProfiles("test")
class AppTest {
    /**
     * Test if the application can start without any hiccups.
     */
    @Test
    fun testApplicationStart() {
    }
}