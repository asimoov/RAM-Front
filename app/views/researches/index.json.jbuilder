json.array!(@researches) do |research|
  json.id research.id
  json.birthday research.birthday
  json.handbook research.handbook
  json.name research.name
  json.cns research.cns
  json.sex research.sex
  json.weight research.weight
  json.height research.height
  json.color research.color
  json.unit research.unit
  json.bed research.bed
  json.admission research.admission
  json.hospital_id research.hospital_id
  json.etilismo research.etilismo
  json.tempoEtilismo research.tempoEtilismo
  json.tabagismo research.tabagismo
  json.tempoTabagismo research.tempoTabagismo
  json.gravity research.gravity
  json.plantasMedicinais research.plantasMedicinais
  json.reacoesAdversas research.reacoesAdversas
  json.sequels research.sequels
  json.treatment research.treatment
  json.exposicaoPrevia research.exposicaoPrevia
  json.desenvolveuReacao research.desenvolveuReacao
  json.usaCocaina research.usaCocaina
  json.usaCrack research.usaCrack
  json.usaLSD research.usaLSD
  json.usaMaconha research.usaMaconha
  json.anotherLocation research.anotherLocation
  json.algNaranjo research.algNaranjo
  json.algOMS research.algOMS
  json.algRUCAM research.algRUCAM
  json.algUE research.algUE

  json.medications research.medications do |medication|
  	json.dose medication.dose
  	json.end medication.end
  	json.indication medication.indication
  	json.name medication.name
  	json.start medication.start
  	json.way medication.way
  end

  json.ram do
    json.cause research.ram.cause
    json.comorbidity research.ram.comorbidity
    json.end research.ram.end
    json.otherCauses research.ram.otherCauses
    json.start research.ram.start
    json.suspects research.ram.suspects do |suspect| 
      json.dose suspect.dose
      json.end suspect.end
      json.indication suspect.indication
      json.name suspect.name
      json.start suspect.start
      json.way suspect.way
    end
  end

  json.updatedAt research.updated_at
  json.createdAt research.created_at
  
  json.url research_url(research, format: :json)
end
