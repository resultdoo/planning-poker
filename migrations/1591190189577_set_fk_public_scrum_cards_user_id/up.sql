alter table "public"."scrum_cards"
           add constraint "scrum_cards_user_id_fkey"
           foreign key ("user_id")
           references "public"."users"
           ("id") on update restrict on delete cascade;
