package vasyl.example.demo.Repositories;

import org.springframework.data.repository.CrudRepository;
import vasyl.example.demo.data.Engine;

public interface EngineRepository extends CrudRepository<Engine, Long> {
}
