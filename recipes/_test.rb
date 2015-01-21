workers = search(:node, 'foo:bar')
log "Num workers #{workers.size}"

workers.each do |w|
  log w.name
end
