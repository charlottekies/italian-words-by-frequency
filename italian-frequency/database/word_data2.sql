BEGIN TRANSACTION;

INSERT INTO word(word, frequency, translation)
VALUES('e', 1, 'And'), ('non', 2, 'Not'), ('che', 3, 'That'), ('di', 4, 'Of'), ('la', 5, 'the'), ('il', 6, 'The'), ('un', 7, 'a'), ('a', 8, 'to'), ('per', 9, 'For'), ('è', 10, 'is'), ('in', 11, 'in'), ('una', 12, 'a'), ('mi', 13, 'me'), ('sono', 14, 'I am'), ('ho', 15, 'I have'), ('l''', 16, 'The'), ('si', 17, 'itself'), ('ha', 18, 'has'), ('cosa', 19, 'What'), ('ma', 20, 'but'), ('lo', 21, 'the'), ('con', 22, 'with'), ('no', 23, 'no'), ('le', 24, 'the'), ('ti', 25, 'you'), ('se', 26, 'self'), ('da', 27, 'from'), ('i', 28, 'the'), ('come', 29, 'as'), ('io', 30, 'I'), ('ci', 31, 'There'), ('hai', 32, 'you have'), ('questo', 33, 'This'), ('perché', 34, 'Why'), ('bene', 35, 'Well'), ('qui', 36, 'here'), ('sei', 37, 'six'), ('del', 38, 'of the'), ('più', 39, 'more'), ('tu', 40, 'you'), ('solo', 41, 'Alone'), ('mio', 42, 'my'), ('al', 43, 'to the'), ('me', 44, 'myself'), ('così', 45, 'Like this'), ('tutto', 46, 'All'), ('c''', 47, 'there'), ('te', 48, 'you'), ('era', 49, 'era'), ('della', 50, 'from the'), ('mia', 51, 'my'), ('fatto', 52, 'Done'), ('fare', 53, 'Do'), ('essere', 54, 'to be'), ('so', 55, 'I know'), ('quando', 56, 'when'), ('sì', 57, 'Yes'), ('ora', 58, 'Now'), ('lei', 59, 'she'), ('gli', 60, 'The'), ('ne', 61, 'neither'), ('oh', 62, 'Oh'), ('questa', 63, 'this'), ('detto', 64, 'said'), ('ok', 65, 'ok'), ('va', 66, 'it goes'), ('quello', 67, 'that'), ('mai', 68, 'never'), ('alla', 69, 'at the'), ('o', 70, 'or'), ('anche', 71, 'Also'), ('stato', 72, 'state'), ('abbiamo', 73, 'we have'), ('tutti', 74, 'everyone'), ('dei', 75, 'of the'), ('grazie', 76, 'Thank you'), ('chi', 77, 'who'), ('sta', 78, 'is'), ('molto', 79, 'Very'), ('voglio', 80, 'I want'), ('tuo', 81, 'your'), ('beh', 82, 'Well'), ('sia', 83, 'is'), ('nel', 84, 'In the'), ('lui', 85, 'he'), ('allora', 86, 'so'), ('posso', 87, 'I can'), ('ehi', 88, 'Hey'), ('prima', 89, 'Before'), ('tua', 90, 'your'), ('suo', 91, 'his'), ('niente', 92, 'Nothing'), ('qualcosa', 93, 'something'), ('sai', 94, 'you know'), ('siamo', 95, 'we are'), ('un''', 96, 'a'), ('già', 97, 'Already'), ('davvero', 98, 'Really'), ('ancora', 99, 'Still'), ('hanno', 100, 'they have'), ('stai', 101, 'you are'), ('fa', 102, 'does'), ('sua', 103, 'her'), ('casa', 104, 'home'), ('uno', 105, 'one'), ('dove', 106, 'Where'), ('su', 107, 'on'), ('vero', 108, 'TRUE'), ('vuoi', 109, 'you want'), ('noi', 110, 'we'), ('due', 111, 'two'), ('quindi', 112, 'Therefore'), ('dire', 113, 'to say'), ('d''', 114, 'of'), ('delle', 115, 'from the'), ('quella', 116, 'that'), ('sempre', 117, 'Always'), ('altro', 118, 'other'), ('sto', 119, 'this'), ('andare', 120, 'go'), ('ad', 121, 'to'), ('po', 122, 'bit'), ('loro', 123, 'They'), ('devo', 124, 'I have to'), ('quel', 125, 'that'), ('forse', 126, 'Perhaps'), ('li', 127, 'there'), ('proprio', 128, 'own'), ('certo', 129, 'Certain'), ('può', 130, 'can'), ('tempo', 131, 'time'), ('nella', 132, 'in the'), ('poi', 133, 'Then'), ('vi', 134, 'you'), ('credo', 135, 'I believe'), ('vita', 136, 'life'), ('cose', 137, 'things'), ('sul', 138, 'on the'), ('quanto', 139, 'How much'), ('puoi', 140, 'you can'), ('fuori', 141, 'out'), ('anni', 142, 'years'), ('cui', 143, 'which'), ('andiamo', 144, 'let''s go'), ('dell''', 145, 'of'), ('parte', 146, 'part'), ('visto', 147, 'view'), ('qualcuno', 148, 'someone'), ('all''', 149, 'at'), ('lavoro', 150, 'Work'), ('voi', 151, 'you'), ('ciao', 152, 'HI'), ('dio', 153, 'God'), ('volta', 154, 'time'), ('dopo', 155, 'After'), ('adesso', 156, 'Now'), ('stata', 157, 'was'), ('uomo', 158, 'man'), ('padre', 159, 'father'), ('devi', 160, 'you have to'), ('bisogno', 161, 'need'), ('amico', 162, 'Friend'), ('ed', 163, 'and'), ('posto', 164, 'place'), ('nessuno', 165, 'Nobody'), ('via', 166, 'Street'), ('fai', 167, 'you do'), ('signore', 168, 'Gentleman'), ('meglio', 169, 'Better'), ('cazzo', 170, 'fuck'), ('dai', 171, 'come on'), ('dal', 172, 'from the'), ('vuole', 173, 'wants'), ('sembra', 174, 'it seems'), ('giorno', 175, 'day'), ('ogni', 176, 'Every'), ('modo', 177, 'way'), ('senza', 178, 'without'), ('vedere', 179, 'see'), ('dobbiamo', 180, 'we have to'), ('signor', 181, 'Mr'), ('qualche', 182, 'some'), ('dispiace', 183, 'sorry'), ('penso', 184, 'I think'), ('ecco', 185, 'Here you are'), ('parlare', 186, 'speak'), ('tra', 187, 'Between'), ('mamma', 188, 'mom'), ('sarebbe', 189, 'would be'), ('dalla', 190, 'from the'), ('troppo', 191, 'too'), ('fosse', 192, 'is'), ('possiamo', 193, 'we can'), ('ce', 194, 'there is'), ('nuovo', 195, 'new'), ('male', 196, 'bad'), ('madre', 197, 'mother'), ('avete', 198, 'you have'), ('tanto', 199, 'much'), ('favore', 200, 'favor'), ('successo', 201, 'success'), ('vai', 202, 'Go'), ('sulla', 203, 'on the'), ('giusto', 204, 'Right'), ('sa', 205, 'know'), ('miei', 206, 'my'), ('aspetta', 207, 'Wait'), ('avere', 208, 'have'), ('altra', 209, 'other'), ('farlo', 210, 'to do it'), ('alle', 211, 'to'), ('facendo', 212, 'doing'), ('abbia', 213, 'have'), ('momento', 214, 'moment'), ('ero', 215, 'I was'), ('aveva', 216, 'I had'), ('ragazzi', 217, 'Boys'), ('deve', 218, 'needs to'), ('persone', 219, 'people'), ('nostro', 220, 'our'), ('ciò', 221, 'that is'), ('tipo', 222, 'guy'), ('prego', 223, 'Please'), ('grande', 224, 'great'), ('senti', 225, 'feel'), ('appena', 226, 'as soon as'), ('potrebbe', 227, 'could be'), ('soldi', 228, 'money'), ('dice', 229, 'He says'), ('sapere', 230, 'know'), ('tre', 231, 'Three'), ('oggi', 232, 'Today'), ('questi', 233, 'these'), ('piace', 234, 'pleases'), ('idea', 235, 'idea'), ('siete', 236, 'you are'), ('ai', 237, 'to the'), ('avevo', 238, 'I had'), ('figlio', 239, 'son'), ('accordo', 240, 'agreement'), ('gente', 241, 'people'), ('sicuro', 242, 'Safe'), ('vieni', 243, 'You come'), ('degli', 244, 'of the'), ('guarda', 245, 'Look'), ('dentro', 246, 'inside'), ('trovato', 247, 'found'), ('queste', 248, 'these'), ('caso', 249, 'case'), ('forza', 250, 'Force'), ('dov''', 251, 'where to'), ('tutte', 252, 'all'), ('pensi', 253, 'think'), ('signora', 254, 'Lady'), ('faccio', 255, 'I do'), ('nome', 256, 'first name'), ('avuto', 257, 'had'), ('problema', 258, 'problem'), ('altri', 259, 'others'), ('aver', 260, 'have'), ('mondo', 261, 'world'), ('tutta', 262, 'all'), ('preso', 263, 'taken'), ('nulla', 264, 'Nothing'), ('nostra', 265, 'our'), ('donna', 266, 'woman'), ('stare', 267, 'to stay'), ('basta', 268, 'Enough'), ('insieme', 269, 'Together'), ('faccia', 270, 'face'), ('ragazza', 271, 'lass'), ('subito', 272, 'right away'), ('famiglia', 273, 'family'), ('ragazzo', 274, 'lad'), ('volevo', 275, 'I wanted'), ('okay', 276, 'okay'), ('sentito', 277, 'sense'), ('ah', 278, 'Ah'), ('stesso', 279, 'same'), ('ragione', 280, 'reason'), ('sarà', 281, 'will be'), ('tuoi', 282, 'your'), ('capito', 283, 'Understood'), ('notte', 284, 'Night'), ('volte', 285, 'times'), ('testa', 286, 'head'), ('serve', 287, 'serve'), ('tesoro', 288, 'treasure'), ('sotto', 289, 'under'), ('eh', 290, 'eh'), ('suoi', 291, 'his'), ('vado', 292, 'I go'), ('sara', 293, 'will be'), ('dato', 294, 'given'), ('stiamo', 295, 'we are'), ('bella', 296, 'Pretty'), ('scusa', 297, 'Excuse me'), ('erano', 298, 'they were'), ('pensavo', 299, 'I thought'), ('avrei', 300, 'I would have'), ('prendere', 301, 'take'), ('buona', 302, 'Good'), ('porta', 303, 'brings'), ('bello', 304, 'Handsome'), ('moglie', 305, 'wife'), ('vorrei', 306, 'I would like'), ('storia', 307, 'history'), ('succede', 308, 'happens'), ('morto', 309, 'died'), ('cercando', 310, 'looking for'), ('dici', 311, 'you say'), ('persona', 312, 'person'), ('pronto', 313, 'ready'), ('meno', 314, 'less'), ('dovuto', 315, 'due'), ('avanti', 316, 'after you'), ('capisco', 317, 'I understand'), ('secondo', 318, 'second'), ('venire', 319, 'come'), ('polizia', 320, 'police'), ('lì', 321, 'there'), ('avrebbe', 322, 'it would have'), ('stanno', 323, 'they are'), ('mentre', 324, 'While'), ('letto', 325, 'Bed'), ('fino', 326, 'until'), ('dico', 327, 'I say'), ('amici', 328, 'friends'), ('fine', 329, 'end'), ('aiuto', 330, 'help'), ('paura', 331, 'fear'), ('fratello', 332, 'Brother'), ('stavo', 333, 'I was'), ('uomini', 334, 'men'), ('nell''', 335, 'in the'), ('domani', 336, 'Tomorrow'), ('facciamo', 337, 'we do'), ('abbastanza', 338, 'Enough'), ('capo', 339, 'boss'), ('amore', 340, 'Love'), ('nei', 341, 'in the'), ('ucciso', 342, 'killed'), ('state', 343, 'state'), ('piano', 344, 'floor'), ('città', 345, 'city'), ('macchina', 346, 'machine'), ('trovare', 347, 'find'), ('comunque', 348, 'Anyway'), ('vediamo', 349, 'We see'), ('giorni', 350, 'days'), ('nemmeno', 351, 'neither'), ('mano', 352, 'hand'), ('dall''', 353, 'from'), ('presto', 354, 'Soon'), ('stati', 355, 'States'), ('merda', 356, 'shit'), ('far', 357, 'do'), ('bambino', 358, 'child'), ('andato', 359, 'left'), ('vedo', 360, 'I see'), ('tornare', 361, 'return'), ('quelle', 362, 'those'), ('primo', 363, 'first'), ('vostro', 364, 'your'), ('neanche', 365, 'not even'), ('sera', 366, 'evening'), ('giro', 367, 'tour'), ('morte', 368, 'death'), ('qua', 369, 'here'), ('pensato', 370, 'thought'), ('buon', 371, 'Good'), ('anno', 372, 'year'), ('mie', 373, 'my'), ('diavolo', 374, 'devil'), ('quasi', 375, 'Almost'), ('piacere', 376, 'Pleasure'), ('bel', 377, 'nice'), ('dovrei', 378, 'I should'), ('nessun', 379, 'no'), ('contro', 380, 'against'), ('stessa', 381, 'same'), ('felice', 382, 'happy'), ('colpa', 383, 'guilt'), ('punto', 384, 'point'), ('andata', 385, 'outward'), ('dovrebbe', 386, 'should'), ('vedi', 387, 'you see'), ('quale', 388, 'Which'), ('chiesto', 389, 'asked'), ('invece', 390, 'Instead'), ('migliore', 391, 'improve'), ('nostri', 392, 'our'), ('finito', 393, 'finished'), ('figlia', 394, 'Daughter'), ('dovresti', 395, 'you should'), ('papa', 396, 'Pope'), ('almeno', 397, 'at least'), ('sento', 398, 'I feel'), ('quei', 399, 'those'), ('col', 400, 'with the'), ('ore', 401, 'hours'), ('passato', 402, 'past'), ('magari', 403, 'Perhaps'), ('minuti', 404, 'minutes'), ('terra', 405, 'Earth'), ('vostra', 406, 'your'), ('verità', 407, 'truth'), ('strada', 408, 'street'), ('sola', 409, 'lonely'), ('credi', 410, 'believe'), ('importante', 411, 'important'), ('sue', 412, 'his'), ('salve', 413, 'Greetings'), ('settimana', 414, 'week'), ('perso', 415, 'lost'), ('uscire', 416, 'go out'), ('parlato', 417, 'spoke'), ('papà', 418, 'Pope'), ('stasera', 419, 'this evening'), ('scusi', 420, 'Excuse me'), ('dollari', 421, 'dollars'), ('giù', 422, 'below'), ('finchè', 423, 'until'), ('occhi', 424, 'eyes'), ('mani', 425, 'hands'), ('ultima', 426, 'last'), ('possibile', 427, 'possible'), ('scuola', 428, 'school'), ('significa', 429, 'it means'), ('sapevo', 430, 'I knew'), ('nelle', 431, 'in'), ('potrei', 432, 'I could'), ('cioè', 433, 'that is'), ('stava', 434, 'was'), ('bambini', 435, 'children'), ('eri', 436, 'you was'), ('importa', 437, 'it matters'), ('indietro', 438, 'backwards'), ('riesco', 439, 'I am able to'), ('sangue', 440, 'blood'), ('chiama', 441, 'who loves'), ('messo', 442, 'put in order'), ('piccolo', 443, 'small'), ('traduzione', 444, 'translation'), ('tardi', 445, 'late'), ('cuore', 446, 'Heart'), ('marito', 447, 'Husband'), ('viene', 448, 'he comes'), ('venuto', 449, 'coming'), ('ieri', 450, 'Yesterday'), ('spero', 451, 'I hope'), ('ricordi', 452, 'memories'), ('quelli', 453, 'those'), ('dovremmo', 454, 'we should'), ('lasciato', 455, 'left'), ('ascolta', 456, 'Listen'), ('difficile', 457, 'difficult'), ('quell''', 458, 'that'), ('auto', 459, 'car'), ('chiamato', 460, 'called'), ('altre', 461, 'other'), ('parlando', 462, 'speaking'), ('pensare', 463, 'think'), ('fantastico', 464, 'Fantastic'), ('fatta', 465, 'made'), ('numero', 466, 'number'), ('veramente', 467, 'Truly'), ('fanno', 468, 'they do'), ('com''', 469, 'as'), ('serio', 470, 'serious'), ('possa', 471, 'can'), ('fossi', 472, 'dive'), ('entrare', 473, 'enter'), ('anch''', 474, 'too'), ('qualsiasi', 475, 'any'), ('pensa', 476, 'thinks'), ('dicendo', 477, 'saying'), ('acqua', 478, 'waterfall'), ('portato', 479, 'carried'), ('stanza', 480, 'room'), ('problemi', 481, 'problems'), ('realtà', 482, 'reality'), ('forte', 483, 'strong'), ('nessuna', 484, 'none'), ('lascia', 485, 'leaves'), ('amo', 486, 'I love'), ('roba', 487, 'stuff'), ('agente', 488, 'agent'), ('dietro', 489, 'behind'), ('corpo', 490, 'body'), ('pare', 491, 'it seems'), ('sentire', 492, 'feel'), ('foto', 493, 'photo'), ('telefono', 494, 'telephone'), ('voleva', 495, 'he wanted'), ('poco', 496, 'little'), ('prendi', 497, 'you take'), ('piccola', 498, 'small'), ('vicino', 499, 'Neighbor'), ('quest''', 500, 'this'), ('sacco', 501, 'sack'), ('stia', 502, 'stia'), ('capire', 503, 'understand'), ('potuto', 504, 'could'), ('cinque', 505, 'five'), ('strano', 506, 'strange'), ('tue', 507, 'your'), ('andando', 508, 'going'), ('donne', 509, 'women'), ('sappiamo', 510, 'we know'), ('bravo', 511, 'good boy'), ('ragazze', 512, 'girls'), ('festa', 513, 'party'), ('senso', 514, 'sense'), ('genere', 515, 'type'), ('quattro', 516, 'four'), ('dare', 517, 'give'), ('attimo', 518, 'moment'), ('sorella', 519, 'sister'), ('pure', 520, 'mashed potato'), ('probabilmente', 521, 'probably'), ('film', 522, 'movie'), ('parla', 523, 'speaks'), ('ufficio', 524, 'office'), ('verso', 525, 'towards'), ('mesi', 526, 'months'), ('farti', 527, 'make you'), ('unica', 528, 'unique'), ('morire', 529, 'die'), ('signorina', 530, 'Miss'), ('vecchio', 531, 'old'), ('domanda', 532, 'request'), ('ben', 533, 'well'), ('guerra', 534, 'war'), ('dottore', 535, 'doctor'), ('conosco', 536, 'I know'), ('qual', 537, 'that'), ('vivere', 538, 'live'), ('vista', 539, 'view'), ('prova', 540, 'trial'), ('nuova', 541, 'new'), ('ricordo', 542, 'I remember'), ('divertente', 543, 'fun'), ('avessi', 544, 'had'), ('sicura', 545, 'safe'), ('paio', 546, 'pair'), ('conto', 547, 'I count'), ('perdere', 548, 'LOSE'), ('dimmi', 549, 'Tell me'), ('farmi', 550, 'make me'), ('figli', 551, 'children'), ('mezzo', 552, 'half'), ('lavorare', 553, 'work'), ('unico', 554, 'unique'), ('esattamente', 555, 'Exactly'), ('squadra', 556, 'squad'), ('esatto', 557, 'Exactly'), ('possono', 558, 'can'), ('fate', 559, 'you do'), ('faro', 560, 'lighthouse'), ('sapete', 561, 'you know'), ('dottor', 562, 'Doctor'), ('parola', 563, 'word'), ('piedi', 564, 'feet'), ('sopra', 565, 'above'), ('motivo', 566, 'reason'), ('avevi', 567, 'you had'), ('cavolo', 568, 'cabbage'), ('capitano', 569, 'captain'), ('finita', 570, 'finite'), ('volete', 571, 'you want'), ('siano', 572, 'they are'), ('potresti', 573, 'you could'), ('gioco', 574, 'game'), ('perfetto', 575, 'Perfect'), ('mente', 576, 'mind'), ('mangiare', 577, 'eat'), ('resto', 578, 'rest'), ('credere', 579, 'believe'), ('fortuna', 580, 'fortune'), ('tratta', 581, 'deals with'), ('chiamo', 582, 'call'), ('morta', 583, 'dead'), ('là', 584, 'there'), ('entrambi', 585, 'both'), ('avresti', 586, 'you would have'), ('passare', 587, 'pass'), ('cena', 588, 'dinner'), ('sarei', 589, 'I would be'), ('controllo', 590, 'check'), ('affari', 591, 'business'), ('spiace', 592, 'unpleasant'), ('ultimo', 593, 'last'), ('facile', 594, 'easy'), ('farò', 595, 'lighthouse'), ('buongiorno', 596, 'Good morning'), ('davanti', 597, 'in front of'), ('tizio', 598, 'guy'), ('dammi', 599, 'give me'), ('sicurezza', 600, 'safety'), ('dalle', 601, 'give her'), ('quanti', 602, 'how many'), ('dica', 603, 'say'), ('matrimonio', 604, 'marriage'), ('vogliono', 605, 'they want'), ('molti', 606, 'many'), ('culo', 607, 'ass'), ('fuoco', 608, 'fire'), ('cercare', 609, 'look for'), ('pistola', 610, 'pistol'), ('potremmo', 611, 'we could'), ('re', 612, 'king'), ('mandato', 613, 'mandate'), ('puttana', 614, 'whore'), ('negli', 615, 'in'), ('inizio', 616, 'start'), ('saranno', 617, 'they will be'), ('causa', 618, 'cause'), ('voglia', 619, 'wants'), ('mettere', 620, 'put'), ('fammi', 621, 'do for me'), ('uccidere', 622, 'kill'), ('vogliamo', 623, 'we want'), ('faremo', 624, 'we will do'), ('però', 625, 'However'), ('genitori', 626, 'parents'), ('sesso', 627, 'sex'), ('potete', 628, 'you can'), ('ricevuto', 629, 'received'), ('vivo', 630, 'I live'), ('presidente', 631, 'president'), ('succedendo', 632, 'succeeding'), ('ospedale', 633, 'hospital'), ('fu', 634, 'was'), ('agli', 635, 'to'), ('scritto', 636, 'written'), ('smettila', 637, 'stop that'), ('vada', 638, 'go'), ('attenzione', 639, 'Attention'), ('sulle', 640, 'on'), ('bere', 641, 'drinking'), ('situazione', 642, 'situation'), ('omicidio', 643, 'homocide'), ('revisione', 644, 'revision'), ('avesse', 645, 'had'), ('ottimo', 646, 'Optimal'), ('cura', 647, 'treatment'), ('durante', 648, 'during'), ('provato', 649, 'tried'), ('parole', 650, 'words'), ('lasciare', 651, 'leave'), ('dicono', 652, 'they say'), ('prossima', 653, 'next'), ('nostre', 654, 'our'), ('arrivato', 655, 'arrived'), ('paese', 656, 'village'), ('sull''', 657, 'on'), ('andate', 658, 'go'), ('chiunque', 659, 'whoever'), ('capisci', 660, 'you understand'), ('pace', 661, 'peace'), ('immagino', 662, 'I imagine'), ('musica', 663, 'music'), ('tieni', 664, 'keep'), ('oddio', 665, 'hate'), ('libro', 666, 'book'), ('eravamo', 667, 'we were'), ('amica', 668, 'friend'), ('diventare', 669, 'become'), ('sui', 670, 'on'), ('sbagliato', 671, 'wrong'), ('wow', 672, 'wow'), ('dirmi', 673, 'tell me'), ('farai', 674, 'you will do'), ('entra', 675, 'enter'), ('venuta', 676, 'coming'), ('scelta', 677, 'choice'), ('voluto', 678, 'wanted'), ('portare', 679, 'bring'), ('assolutamente', 680, 'absolutely'), ('molte', 681, 'many'), ('chiedo', 682, 'I ask'), ('torna', 683, 'back'), ('scoperto', 684, 'discovery'), ('fatti', 685, 'facts'), ('settimane', 686, 'weeks'), ('dirlo', 687, 'make him'), ('alcuni', 688, 'some'), ('prigione', 689, 'prison'), ('giornata', 690, 'day'), ('piuttosto', 691, 'rather'), ('buono', 692, 'Good'), ('aspettare', 693, 'wait'), ('parli', 694, 'you speak'), ('arrivare', 695, 'arrive'), ('lungo', 696, 'long'), ('vede', 697, 'see'), ('avvocato', 698, 'lawyer'), ('deciso', 699, 'decided'), ('sarai', 700, 'you will be'), ('messaggio', 701, 'message'), ('dormire', 702, 'sleep'), ('dieci', 703, 'ten'), ('stupido', 704, 'stupid'), ('usare', 705, 'use'), ('dello', 706, 'of the'), ('cielo', 707, 'sky'), ('guardare', 708, 'watch'), ('bagno', 709, 'bath'), ('aria', 710, 'air'), ('voce', 711, 'voice'), ('tornato', 712, 'got back'), ('vuol', 713, 'vuol'), ('conosci', 714, 'you know'), ('benissimo', 715, 'Very well'), ('prendo', 716, 'I take'), ('cane', 717, 'dog'), ('restare', 718, 'remain'), ('chiamare', 719, 'call'), ('poter', 720, 'being able'), ('campo', 721, 'field'), ('luce', 722, 'light'), ('sam', 723, 'Sam'), ('qualunque', 724, 'anyone'), ('giovane', 725, 'young'), ('signori', 726, 'gentlemen'), ('fra', 727, 'between'), ('provare', 728, 'try'), ('minuto', 729, 'minute'), ('saperlo', 730, 'know it'), ('lontano', 731, 'distant'), ('gruppo', 732, 'group'), ('continua', 733, 'continues'), ('arrivo', 734, 'I arrive'), ('gran', 735, 'large'), ('cerca', 736, 'near'), ('passo', 737, 'step'), ('domande', 738, 'requests'), ('insomma', 739, 'In short'), ('bambina', 740, 'girl'), ('pensando', 741, 'think'), ('capelli', 742, 'hair'), ('trova', 743, 'finds'), ('onore', 744, 'honor'), ('aiutare', 745, 'help'), ('prove', 746, 'evidence'), ('funziona', 747, 'works'), ('alto', 748, 'high'), ('credevo', 749, 'I believed'), ('futuro', 750, 'future'), ('preoccuparti', 751, 'worry'), ('idiota', 752, 'idiot'), ('cibo', 753, 'food'), ('fretta', 754, 'rush'), ('cara', 755, 'Dear'), ('finalmente', 756, 'finally'), ('morti', 757, 'dead'), ('odio', 758, 'hate'), ('solito', 759, 'usual'), ('brava', 760, 'Good'), ('incidente', 761, 'accident'), ('allo', 762, 'at the'), ('dev''', 763, 'it must'), ('intenzione', 764, 'intention'), ('speciale', 765, 'special'), ('cambiare', 766, 'change'), ('vera', 767, 'real'), ('camera', 768, 'room'), ('oltre', 769, 'beyond'), ('semplice', 770, 'simple'), ('dirti', 771, 'tell you'), ('riguardo', 772, 'regard'), ('finchè', 773, 'until'), ('aspetto', 774, 'I wait'), ('viaggio', 775, 'voyage'), ('chiaro', 776, 'clear'), ('chiamata', 777, 'call'), ('bocca', 778, 'mouth'), ('permesso', 779, 'permit'), ('piacerebbe', 780, 'would like'), ('dovete', 781, 'you have to'), ('giocare', 782, 'play'), ('ordine', 783, 'order'), ('circa', 784, 'about'), ('ovviamente', 785, 'Obviously'), ('finire', 786, 'finish'), ('natale', 787, 'Christmas'), ('direi', 788, 'I''d say'), ('vostri', 789, 'your'), ('occhio', 790, 'eye'), ('pronta', 791, 'ready'), ('scusami', 792, 'Excuse me'), ('mattina', 793, 'morning'), ('cercato', 794, 'looked for'), ('crede', 795, 'you think'), ('sistema', 796, 'system'), ('fondo', 797, 'bottom'), ('resta', 798, 'remain'), ('devono', 799, 'they have to'), ('prossimo', 800, 'next'), ('pronti', 801, 'ready'), ('saputo', 802, 'known'), ('scusate', 803, 'Excuse me'), ('potere', 804, 'candies'), ('milioni', 805, 'millions'), ('soltanto', 806, 'only'), ('armi', 807, 'weapons'), ('arriva', 808, 'he arrives'), ('fermo', 809, 'stopped'), ('mese', 810, 'month'), ('chiedere', 811, 'ask'), ('cristo', 812, 'Christ'), ('torno', 813, 'back'), ('venite', 814, 'come'), ('controllare', 815, 'check'), ('appuntamento', 816, 'appointment'), ('chiami', 817, 'who do you Love'), ('vecchia', 818, 'old'), ('detective', 819, 'detective'), ('pero', 820, 'However'), ('metti', 821, 'you put'), ('grado', 822, 'grade'), ('vanno', 823, 'they go'), ('nave', 824, 'ship'), ('iniziato', 825, 'started'), ('informazioni', 826, 'information'), ('libero', 827, 'free'), ('stronzo', 828, 'asshole'), ('grandi', 829, 'big'), ('pezzo', 830, 'piece'), ('segreto', 831, 'secret'), ('colpo', 832, 'hit'), ('faceva', 833, 'he did'), ('piacciono', 834, 'like'), ('porto', 835, 'port'), ('oppure', 836, 'or'), ('completamente', 837, 'completely'), ('vederti', 838, 'see you'), ('lista', 839, 'list'), ('venga', 840, 'come'), ('veloce', 841, 'fast'), ('assassino', 842, 'killer'), ('sapeva', 843, 'He knew'), ('ormai', 844, 'at this point'), ('interessa', 845, 'interest'), ('generale', 846, 'general'), ('giusta', 847, 'right'), ('tenere', 848, 'hold'), ('pazzo', 849, 'crazy'), ('vittima', 850, 'victim'), ('giuro', 851, 'I swear'), ('consiglio', 852, 'advise'), ('alcune', 853, 'someone'), ('semplicemente', 854, 'simply'), ('zio', 855, 'Uncle'), ('centro', 856, 'center'), ('specie', 857, 'species'), ('mille', 858, 'one thousand'), ('sogno', 859, 'dream'), ('lasci', 860, 'leave'), ('carino', 861, 'cute'), ('doveva', 862, 'had to'), ('brutto', 863, 'ugly'), ('nello', 864, 'in'), ('aspetti', 865, 'aspect'), ('incredibile', 866, 'incredible'), ('sole', 867, 'Sun'), ('glielo', 868, 'it'), ('legge', 869, 'law'), ('spesso', 870, 'Often'), ('guardate', 871, 'watch'), ('cambiato', 872, 'changed'), ('scena', 873, 'scene'), ('volevi', 874, 'you wanted'), ('lasciami', 875, 'leave me'), ('gentile', 876, 'Kind'), ('rispetto', 877, 'respect'), ('ve', 878, 've'), ('fara', 879, 'will make'), ('zitto', 880, 'Shut up'), ('incontro', 881, 'encounter'), ('farà', 882, 'will make'), ('servono', 883, 'need'), ('rapporto', 884, 'relationship'), ('errore', 885, 'mistake'), ('sanno', 886, 'they know'), ('pagare', 887, 'pay'), ('sorpresa', 888, 'surprise'), ('occhiata', 889, 'look'), ('risposta', 890, 'answer'), ('presa', 891, 'Jack'), ('servizio', 892, 'service'), ('medico', 893, 'doctor'), ('usato', 894, 'used'), ('caro', 895, 'Dear'), ('schifo', 896, 'disgust'), ('avrai', 897, 'you will have'), ('dolore', 898, 'ache'), ('saresti', 899, 'would you be'), ('personale', 900, 'personnel'), ('quali', 901, 'which'), ('saro', 902, 'I will be'), ('peggio', 903, 'worse'), ('addio', 904, 'Goodbye'), ('addosso', 905, 'on'), ('dovevo', 906, 'I had to'), ('poteva', 907, 'he could'), ('pieno', 908, 'full'), ('diverso', 909, 'different'), ('vestiti', 910, 'clothes'), ('sparato', 911, 'shot'), ('do', 912, 'do'), ('sarò', 913, 'I will be'), ('normale', 914, 'normal'), ('fame', 915, 'hunger'), ('programma', 916, 'plan'), ('nonna', 917, 'Grandmother'), ('sappia', 918, 'know'), ('sembrava', 919, 'It seemed'), ('migliori', 920, 'better'), ('notizie', 921, 'news'), ('avevamo', 922, 'we had'), ('riesci', 923, 'are able'), ('posizione', 924, 'position'), ('vengo', 925, 'I come'), ('rimanere', 926, 'stay'), ('compagnia', 927, 'company'), ('proposito', 928, 'purpose'), ('farci', 929, 'make us'), ('ricorda', 930, 'remember'), ('prende', 931, 'takes'), ('tante', 932, 'many'), ('avevano', 933, 'they had'), ('arrivando', 934, 'arriving'), ('chiuso', 935, 'closed'), ('terribile', 936, 'terrible'), ('ritardo', 937, 'delay'), ('attento', 938, 'careful'), ('bar', 939, 'Cafe'), ('sembri', 940, 'you look'), ('fallo', 941, 'just do it'), ('dimenticato', 942, 'forgotten'), ('bisogna', 943, 'must'), ('impossibile', 944, 'impossible'), ('studio', 945, 'study'), ('stessi', 946, 'same'), ('arma', 947, 'weapon'), ('conosce', 948, 'know'), ('uscita', 949, 'exit'), ('fin', 950, 'fin'), ('disse', 951, 'She said'), ('vattene', 952, 'get out'), ('quante', 953, 'how much it is'), ('guai', 954, 'trouble'), ('intorno', 955, 'environment'), ('video', 956, 'video'), ('manca', 957, 'lacks'), ('esserci', 958, 'there'), ('grosso', 959, 'big'), ('tanti', 960, 'many'), ('dolce', 961, 'Sweet'), ('chiave', 962, 'key'), ('cervello', 963, 'brain'), ('coraggio', 964, 'courage'), ('interessante', 965, 'Interesting'), ('peccato', 966, 'Sin'), ('questione', 967, 'question'), ('adoro', 968, 'I adore'), ('aereo', 969, 'airplane'), ('guardi', 970, 'look'), ('rubato', 971, 'stolen'), ('sala', 972, 'room'), ('base', 973, 'basis'), ('sette', 974, 'seven'), ('sente', 975, 'feel'), ('compleanno', 976, 'birthday'), ('potrebbero', 977, 'they might'), ('relazione', 978, 'relation'), ('cliente', 979, 'customer'), ('spalle', 980, 'shoulders'), ('seconda', 981, 'second'), ('parti', 982, 'set off'), ('vale', 983, 'vale'), ('qualcun', 984, 'someone'), ('diritto', 985, 'right'), ('sicuramente', 986, 'surely'), ('appartamento', 987, 'apartment'), ('pranzo', 988, 'lunch'), ('saremo', 989, 'we will be'), ('denaro', 990, 'money'), ('riuscito', 991, 'succeeded '), ('continuare', 992, 'continue'), ('serata', 993, 'evening'), ('nero', 994, 'black'), ('vestito', 995, 'dress'), ('carta', 996, 'paper'), ('ex', 997, 'ex'), ('dottoressa', 998, 'doctor'), ('bastardo', 999, 'bastard'), ('potevo', 1000, 'I was able');
COMMIT;

