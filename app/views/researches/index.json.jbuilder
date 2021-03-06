json.array!(@researches) do |research|
  json.id research.id
  json.birthday l research.birthday
  json.handbook research.handbook
  json.name research.name
  json.cns research.cns
  json.sex research.sex
  json.weight research.weight
  json.height research.height
  json.color research.color
  json.unit research.unit
  json.bed research.bed
  json.admission l research.admission
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
  json.exposicaoPrevia true if(research.exposicaoPrevia != 'f')
  json.desenvolveuReacao true if(research.desenvolveuReacao != 'f')
  json.usaCocaina true if(research.usaCocaina != 'f')
  json.usaCrack true if(research.usaCrack != 'f')
  json.usaLSD true if(research.usaLSD != 'f')
  json.usaMaconha true if(research.usaMaconha != 'f')
  json.anotherLocation true if(research.anotherLocation != 'f')
  json.algNaranjo research.algNaranjo
  json.algOMS research.algOMS
  json.algRUCAM research.algRUCAM
  json.algUE research.algUE
  json.status research.status

  json.medications research.medications do |medication|
    json.name medication.name
    json.way medication.way
  	json.dose medication.dose
  	json.indication medication.indication
  	json.start l medication.start unless medication.start.nil?
    json.end l medication.end unless medication.start.nil?
  end

  json.ram do
    json.cause research.ram.cause
    json.comorbidity research.ram.comorbidity
    json.otherCauses research.ram.otherCauses
    json.start l research.ram.start unless research.ram.start.nil?
    json.end l research.ram.end unless research.ram.end.nil?
    json.suspects research.ram.suspects do |suspect| 
      json.name suspect.name
      json.way suspect.way
      json.dose suspect.dose
      json.indication suspect.indication
      json.end l suspect.end unless suspect.end.nil?
      json.start l suspect.start unless suspect.start.nil?
    end
  end

  json.updatedAt research.updated_at.to_s
  json.createdAt research.created_at.to_s
  
  json.url research_url(research, format: :json)
end
