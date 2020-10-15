alter table "public"."scrum_cards"
           add constraint "scrum_cards_room_id_fkey"
           foreign key ("room_id")
           references "public"."rooms"
           ("id") on update restrict on delete cascade;
