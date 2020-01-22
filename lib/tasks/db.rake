namespace :db do
  desc "TODO"
  task populate: :environment do
    userr = User.create(email:"asd@asd.com", password:"asd")

    tag1 = Tag.create(name:"Palacsinta")
    tag2 = Tag.create(name:"Édes")
    tag3 = Tag.create(name:"Finom")
    tag4 = Tag.create(name:"Hideg")
    tag5 = Tag.create(name:"Hús")
    tag6 = Tag.create(name:"Tésztaféle")

    Recipe.create(title:"Palacsinta",description:"A tojásokat elkeverjük a cukorral, sóval, vanília cukorral. Hozzáadjuk a lisztet, majd lassanként a tejet, folyamatos kevergetés mellett. Végül beleöntjük az olajat. Közepes lángon sütjük.",user:userr,tags:[tag1,tag2,tag3])
    Recipe.create(title:"Fasirt",description:"A darált húst egy keverőtálba rakjuk, és egy hagymát nagy lyukú reszelőn ráreszelünk. Majd egy gerezd fokhagymát is hozzáreszelünk, vagy rányomunk. A két tojást is a húshoz adjuk. Sózzuk-borsozzuk, és a fűszerpaprikával is megszórjuk. A zsemlét kis kockákra felvágjuk, és egy kis edényben felöntjük kevés tejjel. Pont annyival csak, amennyit könnyen felvesz a zsemle, és megpuhítja azt. Majd ezt a kenyérmasszát is a húshoz adjuk, amit aztán jól összekeverünk. Bő olajban kisütjük a dió nagyságúra formált fasírtokat.",user:userr,tags:[tag5,tag3])
    Recipe.create(title:"Kocsonya",description:"A húsokat gondosan szőrmentesítjük. Egy lábasba tesszük  és hideg vízzel felöntjük. Nagyon lassú tűzön főzzük, időnként lehabozzuk. Ha már nem kell habozni beletesszük a fűszereket és a répát. Addig főzzük, amíg a hús le nem válik a csontról. Ez kb. 5 óra. A húst kiszedjük és kicsontozzuk. A levét leszűrjük. A húst tányérokba elosztjuk és erre szedjük rá a levet. Erős íz kedvelőinek tehetünk bele erőspaprikát. Hideg helyre tesszük míg megdermed.",user:userr,tags:[tag3,tag5,tag4])
    Recipe.create(title:"lasagne",description:"A húst 2 ek olívaolajon megfuttatjuk. Sózzuk, borsozzuk, hozzátesszük a babérlevelet, majd 10-12 percig kis lángon főzzük. Közben 2 ek olívaolajon főzni kezdjük a paradicsomot. Kb. 10-15 percig rotyogtatjuk. A húst a szósszal összeöntjük, és újabb 15 percig pöfögtetjük kis lángon. Az utolsó 3 percben hozzáadjuk a felvágott bazsalikomot. Közben a vajat megolvasztjuk, hozzátesszük a lisztet, kis lángon elkeverjük, és lassan, folyamatos kevergetés mellett hozzáöntjük a tejet. Sózzuk, borsozzuk, hozzáreszeljük a szerecsendiót, majd folyamatosan kevergetve sűrűre főzzük. Hozzáadjuk a reszelt parmezán felét. Elzárjuk alatta és a paradicsomos szósz alatt is a gázt. Egy 25x35-ös tepsit kivajazunk, és leteszünk egy adag főzést nem igénylő lasagne tésztát (barilla). Ráteszünk egy adag húsos ragut, majd ismét tésztát. Addig rétegezzük, amíg a hozzávalók elfogynak. Az utolsó adag tésztára a besamel kerül. A tetejére tegyük a parmezánt, majd toljuk 180 fokra előmelegített sütőbe. Süssük 20 percig, majd még 10 percig hagyjuk állni, mielőtt felvágjuk.",user:userr,tags:[tag3,tag5,tag6])

  end

end
