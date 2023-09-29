package tlu.kaardirakendus.akustika.service;

import org.springframework.stereotype.Service;

@Service
public class AkustikaService implements IAkustikaService {

    public String getAllStages() {
        return "Siia tuleb päringu vastus :)";
    }

    public String getStageById(Integer id){
        return "Siia tuleb päringu vastus :) 2";
    }

}
